local selectedProps = {}
local activeShield
local spawnedProps = {}
local activeKatanaIndex

local swordReplacements = {
    weapon_melee_machete = {hash = 680856689, model = "w_melee_machete01"},
    weapon_melee_machete_collector = {hash = -1774451313, model = "w_melee_machete03"},
    weapon_melee_machete_horror = {hash = 1953585457, model = "w_melee_machete04"}
}
local knifeReplacements = {
    weapon_melee_knife = {hash = -618550132, model = "w_melee_knife02"},
    weapon_melee_knife_horror = {hash = -1221986448, model = "w_melee_knife21"},
    weapon_melee_knife_trader = {hash = -1448818329, model = "w_melee_knife22"},
    weapon_melee_knife_jawbone = {hash = 277270593, model = "w_melee_knife03"},
    weapon_melee_knife_rustic = {hash = -1013236292, model = "w_melee_knife24"}
}
local replacements = {
    SWORD = swordReplacements[Config.WeaponSwordReplace] or {},
    KNIFE = knifeReplacements[Config.WeaponKnifeReplace] or {},
    HAMMER = Config.WeaponHammerReplace == "weapon_melee_hammer"
        and {hash = -295349450, model = "w_melee_hammer02"} or {}
}
local replacementConfigKeys = {
    SWORD = "WeaponSwordReplace",
    KNIFE = "WeaponKnifeReplace",
    HAMMER = "WeaponHammerReplace"
}
local UNARMED_HASH = -1569615261

function AttachCustomWeaponProp(prop, parent, boneIndex, offsets)
    AttachEntityToEntity(prop, parent, boneIndex,
        offsets[1], offsets[2], offsets[3], offsets[4], offsets[5], offsets[6],
        false, false, false, false, 0, true, false, false)
end

function AttachCustomKatanaBlade(katana)
    AttachEntityToEntity(katana.prop2, katana.prop1, 0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        false, false, false, false, 0, true, false, false)
end

function LoadCustomWeaponModel(modelName, waitTime)
    local modelHash = GetHashKey(modelName)
    RequestModel(modelHash, true)
    while not HasModelLoaded(modelHash) do
        Wait(waitTime)
    end
    return modelHash
end

function SignCustomWeaponEntity(prop, argumentCount)
    -- Preserve the original network payload, including its trailing nil arguments.
    local networkIds = table.pack(NetworkGetNetworkIdFromEntity(prop))
    TriggerServerEvent("weapon:signweapon", table.unpack(networkIds, 1, argumentCount))
end

function RemoveCustomWeaponReplacement(weaponType)
    Citizen.InvokeNative(5231435679784720824, PlayerPedId(),
        replacements[weaponType].hash, true, 4152224061)
end

function SelectCustomWeaponProp(weaponType, prop, wheelName)
    selectedProps[weaponType] = prop
    AddTextEntry(Config[replacementConfigKeys[weaponType]], wheelName)
end

function RefreshCustomWeaponSelection(weaponType)
    if not replacements[weaponType] then
        return
    end
    if weaponType ~= "HAMMER" then
        local activeKatana = activeKatanaIndex and Config.Katana[activeKatanaIndex]
        if activeKatana and activeKatana.Type == weaponType and DoesEntityExist(activeKatana.prop1) then
            SelectCustomWeaponProp(weaponType, activeKatana.prop1, activeKatana.WheelName)
            return
        end
        for index = 1, #Config.Katana do
            local katana = Config.Katana[index]
            if katana.Type == weaponType and DoesEntityExist(katana.prop1) then
                SelectCustomWeaponProp(weaponType, katana.prop1, katana.WheelName)
                return
            end
        end
    end
    for index = 1, #Config.Weapons do
        local weapon = Config.Weapons[index]
        if weapon.Type == weaponType and DoesEntityExist(weapon.prop) then
            SelectCustomWeaponProp(weaponType, weapon.prop, weapon.WheelName)
            return
        end
    end
    selectedProps[weaponType] = nil
    RemoveCustomWeaponReplacement(weaponType)
end

function GiveCustomWeaponReplacement(weaponType, wheelName)
    GiveWeaponToPed(PlayerPedId(), UNARMED_HASH, 0, true, true)
    GiveWeaponToPed(PlayerPedId(), replacements[weaponType].hash, 0, false, true)
    AddTextEntry(Config[replacementConfigKeys[weaponType]], wheelName)
end

for weaponIndex = 1, #Config.Weapons do
    local eventName = "RL_Custom_Weapons:Give" .. Config.Weapons[weaponIndex].DBName
    RegisterNetEvent(eventName)
    AddEventHandler(eventName, function(weaponData, removeOnly)
        if Config.FrameWork == "VORP" then
            TriggerEvent("vorp_inventory:CloseInv")
        end
        local weapon = Config.Weapons[weaponIndex]
        if DoesEntityExist(weapon.prop) then
            local weaponType = weapon.Type
            DeleteEntity(weapon.prop)
            weapon.prop = nil
            RefreshCustomWeaponSelection(weaponType)
            return
        end
        if removeOnly then
            return
        end
        local modelHash = LoadCustomWeaponModel(weaponData.Model, 500)
        local coords = GetEntityCoords(PlayerPedId())
        weapon.prop = CreateObject(modelHash, coords.x, coords.y, coords.z,
            true, true, true, false, false, true)
        local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), weapon.BoneID)
        local offsets = weapon.Type == "SHIELD" and weapon.Handle or weapon.Attach
        AttachCustomWeaponProp(weapon.prop, PlayerPedId(), boneIndex, offsets)
        weapon.attachedhip = true
        SignCustomWeaponEntity(weapon.prop, 16)
        table.insert(spawnedProps, {item = weapon.prop})
        if replacements[weapon.Type] then
            GiveCustomWeaponReplacement(weapon.Type, weapon.WheelName)
            selectedProps[weapon.Type] = weapon.prop
        end
        if weapon.Type == "SHIELD" then
            if activeShield then
                DeleteEntity(activeShield)
            end
            activeShield = weapon.prop
        end
    end)
end

function SelectNextCustomKatana(weaponType, removedIndex)
    for index = 1, #Config.Katana do
        local katana = Config.Katana[index]
        if index ~= removedIndex and katana.Type == weaponType and DoesEntityExist(katana.prop1) then
            activeKatanaIndex = index
            return
        end
    end
    activeKatanaIndex = nil
end

function HandleKatana(katanaIndex)
    local katana = Config.Katana[katanaIndex]
    if not katana or not DoesEntityExist(katana.prop2) then
        return
    end
    katana.Handlekatana = true
    katana.Attachkatana = false
    DetachEntity(katana.prop2)
    Citizen.Wait(45)
    local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_HAND")
    AttachCustomWeaponProp(katana.prop2, PlayerPedId(), boneIndex, katana.Handle)
end

function AttachKatana(katanaIndex)
    local katana = Config.Katana[katanaIndex]
    if not katana or not DoesEntityExist(katana.prop1) or not DoesEntityExist(katana.prop2) then
        return
    end
    katana.Handlekatana = false
    katana.Attachkatana = true
    Citizen.Wait(45)
    local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), katana.BoneID)
    AttachCustomWeaponProp(katana.prop1, PlayerPedId(), boneIndex, katana.Attach)
    AttachCustomKatanaBlade(katana)
end

function RemoveCustomKatana(katanaIndex)
    local katana = Config.Katana[katanaIndex]
    local weaponType = katana.Type
    local wasActive = activeKatanaIndex == katanaIndex
    DeleteEntity(katana.prop1)
    DeleteEntity(katana.prop2)
    katana.prop1 = nil
    katana.prop2 = nil
    katana.Handlekatana = false
    katana.Attachkatana = true
    if wasActive then
        Citizen.InvokeNative(-5911376166256149492, PlayerPedId(), UNARMED_HASH, true, 0, false, false)
        SelectNextCustomKatana(weaponType, katanaIndex)
    end
    RefreshCustomWeaponSelection(weaponType)
end

for katanaIndex = 1, #Config.Katana do
    Config.Katana[katanaIndex].prop1 = nil
    Config.Katana[katanaIndex].prop2 = nil
    Config.Katana[katanaIndex].Handlekatana = false
    Config.Katana[katanaIndex].Attachkatana = true
    local eventName = "RL_Custom_Weapons:GiveKatana" .. Config.Katana[katanaIndex].DBName
    RegisterNetEvent(eventName)
    AddEventHandler(eventName, function(katanaData, removeOnly)
        if Config.FrameWork == "VORP" then
            TriggerEvent("vorp_inventory:CloseInv")
        end
        local katana = Config.Katana[katanaIndex]
        if DoesEntityExist(katana.prop1) then
            RemoveCustomKatana(katanaIndex)
            return
        end
        if removeOnly then
            return
        end
        if activeKatanaIndex and activeKatanaIndex ~= katanaIndex then
            local previousKatana = Config.Katana[activeKatanaIndex]
            if previousKatana and DoesEntityExist(previousKatana.prop1) and DoesEntityExist(previousKatana.prop2) then
                AttachKatana(activeKatanaIndex)
            end
        end
        local sheathModel = LoadCustomWeaponModel(katanaData.Model1, 150)
        local bladeModel = LoadCustomWeaponModel(katanaData.Model2, 150)
        local coords = GetEntityCoords(PlayerPedId())
        katana.prop1 = CreateObject(sheathModel, coords.x, coords.y, coords.z, true, true, false)
        SignCustomWeaponEntity(katana.prop1, 17)
        Citizen.InvokeNative(-2281056957897668774, katana.prop1, false, true)
        katana.prop2 = CreateObject(bladeModel, coords.x, coords.y, coords.z, true, true, false)
        SignCustomWeaponEntity(katana.prop2, 17)
        Citizen.InvokeNative(-2281056957897668774, katana.prop2, false, true)
        local boneIndex = GetEntityBoneIndexByName(PlayerPedId(), katanaData.BoneID)
        AttachCustomWeaponProp(katana.prop1, PlayerPedId(), boneIndex, katanaData.Attach)
        AttachCustomKatanaBlade(katana)
        katana.Handlekatana = false
        katana.Attachkatana = true
        activeKatanaIndex = katanaIndex
        local weaponType = katanaData.Type == "KNIFE" and "KNIFE" or "SWORD"
        selectedProps[weaponType] = katana.prop1
        GiveCustomWeaponReplacement(weaponType, katanaData.WheelName)
        table.insert(spawnedProps, {item = katana.prop1})
        table.insert(spawnedProps, {item = katana.prop2})
    end)
end

function UpdateCustomWeaponAttachment(weapon, ped, equippedHash, mountState, holdingState)
    if weapon.Type == "SHIELD" and weapon.attachedhip then
        local boneIndex = GetEntityBoneIndexByName(ped, weapon.BoneID)
        local offsets
        if mountState ~= false then
            offsets = weapon.OnHorse
        elseif holdingState then
            offsets = weapon.Holding
        else
            offsets = weapon.Handle
        end
        AttachCustomWeaponProp(weapon.prop, ped, boneIndex, offsets)
        weapon.attachedhip = false
    end
    local equippedType
    if equippedHash == replacements.SWORD.hash then
        equippedType = "SWORD"
    elseif equippedHash == replacements.KNIFE.hash then
        equippedType = "KNIFE"
    elseif equippedHash == replacements.HAMMER.hash then
        equippedType = "HAMMER"
    end
    if equippedType then
        if weapon.attachedhip then
            if selectedProps[equippedType] == weapon.prop then
                local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_HAND")
                AttachCustomWeaponProp(selectedProps[equippedType], ped, boneIndex, weapon.Handle)
            end
            weapon.attachedhip = false
        end
    elseif equippedHash == UNARMED_HASH then
        local boneIndex = GetEntityBoneIndexByName(ped, weapon.BoneID)
        if not weapon.attachedhip and weapon.Attach then
            AttachCustomWeaponProp(weapon.prop, ped, boneIndex, weapon.Attach)
        end
        weapon.attachedhip = true
    end
end

function UpdateActiveCustomKatana(equippedHash)
    local katana = activeKatanaIndex and Config.Katana[activeKatanaIndex]
    if not katana or not DoesEntityExist(katana.prop1) or not DoesEntityExist(katana.prop2) then
        return
    end
    local weaponType = katana.Type == "KNIFE" and "KNIFE" or "SWORD"
    if equippedHash == replacements[weaponType].hash then
        if selectedProps[weaponType] == katana.prop1 and katana.Handlekatana == false then
            HandleKatana(activeKatanaIndex)
        end
    elseif katana.Attachkatana == false then
        AttachKatana(activeKatanaIndex)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(25)
        local ped = PlayerPedId()
        -- These globals are undefined in this resource; preserve external overrides.
        local hasWeapon, equippedHash = GetCurrentPedWeapon(ped, p2, attachPoint, p4)
        local mountState = Citizen.InvokeNative(5047347065715189086, ped)
        local holdingState = Citizen.InvokeNative(-2880389330056238698, ped)
        for index = 1, #Config.Weapons do
            local weapon = Config.Weapons[index]
            if DoesEntityExist(weapon.prop) then
                UpdateCustomWeaponAttachment(weapon, ped, equippedHash, mountState, holdingState)
            end
        end
        UpdateActiveCustomKatana(equippedHash)
    end
end)

local swordModelHash = GetHashKey(replacements.SWORD.model)
local hammerModelHash = GetHashKey(replacements.HAMMER.model)
local knifeModelHash = GetHashKey(replacements.KNIFE.model)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        for _, entity in pairs(GetGamePool("CObject")) do
            if GetEntityModel(entity) == swordModelHash
                or GetEntityModel(entity) == hammerModelHash
                or GetEntityModel(entity) == knifeModelHash then
                if GetEntityAlpha(entity) ~= 0 then
                    SetEntityAlpha(entity, 0)
                end
            end
        end
    end
end)

if Config.SecureDetach then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5000)
            for _, entity in pairs(GetGamePool("CObject")) do
                local modelHash = GetEntityModel(entity)
                for _, weapon in pairs(Config.Weapons) do
                    if modelHash == GetHashKey(weapon.Model) and not IsEntityAttached(entity) then
                        while not NetworkHasControlOfEntity(entity) do
                            Wait(100)
                            NetworkRequestControlOfEntity(entity)
                        end
                        SetEntityAsMissionEntity(entity, true, true)
                        DeleteEntity(entity)
                    end
                end
            end
        end
    end)
end

RegisterNetEvent("RL_Custom_Weapons:Delete_Weapons")
AddEventHandler("RL_Custom_Weapons:Delete_Weapons", function()
    for _, spawnedProp in ipairs(spawnedProps) do
        if DoesEntityExist(spawnedProp.item) then
            DeleteEntity(spawnedProp.item)
        end
    end
    spawnedProps = {}
    RemoveCustomWeaponReplacement("SWORD")
    RemoveCustomWeaponReplacement("KNIFE")
    RemoveCustomWeaponReplacement("HAMMER")
    for index = 1, #Config.Katana do
        local katana = Config.Katana[index]
        if DoesEntityExist(katana.prop1) then
            DeleteEntity(katana.prop1)
        end
        if DoesEntityExist(katana.prop2) then
            DeleteEntity(katana.prop2)
        end
        katana.prop1 = nil
        katana.prop2 = nil
    end
    activeKatanaIndex = nil
end)

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        TriggerEvent("RL_Custom_Weapons:Delete_Weapons")
    end
end)
