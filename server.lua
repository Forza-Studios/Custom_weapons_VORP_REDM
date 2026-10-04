local frameworkState

function GiveCustomWeaponForJob(playerSource, weapon, jobName, eventPrefix)
    if weapon.Joblock and not contains(weapon.Joblock, jobName) then
        TriggerClientEvent("RL_Custom_Weapons:Notification_No_Job", playerSource)
        return
    end
    TriggerClientEvent(eventPrefix .. weapon.DBName, playerSource, weapon)
end

function RegisterCustomWeaponItems(collectionName, eventPrefix)
    for itemIndex = 1, #Config[collectionName] do
        local itemName = Config[collectionName][itemIndex].DBName
        if Config.FrameWork == "VORP" then
            exports.vorp_inventory:registerUsableItem(itemName, function(itemData)
                local user = VorpCore.getUser(itemData.source)
                local character = user.getUsedCharacter
                GiveCustomWeaponForJob(itemData.source, Config[collectionName][itemIndex], character.job, eventPrefix)
            end)
        elseif Config.FrameWork == "RSG" then
            frameworkState.Functions.CreateUseableItem(itemName, function(playerSource, item)
                local player = frameworkState.Functions.GetPlayer(playerSource)
                GiveCustomWeaponForJob(playerSource, Config[collectionName][itemIndex], player.PlayerData.job.name, eventPrefix)
            end)
        elseif Config.FrameWork == "REDEMRP" then
            local eventName = "RegisterUsableItem:" .. itemName
            RegisterServerEvent(eventName)
            AddEventHandler(eventName, function(playerSource)
                local player = frameworkState.GetPlayer(playerSource)
                local weapon = Config[collectionName][itemIndex]
                if weapon.Joblock then
                    GiveCustomWeaponForJob(playerSource, weapon, player.job, eventPrefix)
                else
                    TriggerClientEvent(eventPrefix .. weapon.DBName, playerSource, weapon)
                end
            end)
        elseif Config.FrameWork == "QBR" then
            exports["qbr-core"]:CreateUseableItem(itemName, function(playerSource, item)
                local player = exports["qbr-core"]:GetPlayer(playerSource)
                local weapon = Config[collectionName][itemIndex]
                if player.Functions.GetItemByName(weapon.DBName) then
                    TriggerClientEvent(eventPrefix .. weapon.DBName, playerSource, weapon)
                end
            end)
        end
    end
end

if Config.FrameWork == "VORP" then
    TriggerEvent("getCore", function(core)
        VorpCore = core
    end)
elseif Config.FrameWork == "RSG" then
    frameworkState = exports["rsg-core"]:GetCoreObject()
elseif Config.FrameWork == "REDEMRP" then
    frameworkState = exports.redem_roleplay:RedEM()
elseif Config.FrameWork == "QBR" then
    frameworkState = exports["qbr-core"]:GetQBPlayers()
else
    print("No Compatibility Framework")
end

RegisterCustomWeaponItems("Weapons", "RL_Custom_Weapons:Give")
RegisterCustomWeaponItems("Katana", "RL_Custom_Weapons:GiveKatana")

function contains(values, expectedValue)
    if values ~= 0 then
        for _, value in pairs(values) do
            if value == expectedValue then
                return true
            end
        end
    end
    return false
end

-- The original reuses the framework upvalue for this list, breaking later RSG/RedEMRP callbacks.
-- Preserve that behavior until a separate functional fix is approved.
frameworkState = {}
local signedWeapons = frameworkState

RegisterServerEvent("weapon:signweapon")
AddEventHandler("weapon:signweapon", function(networkId)
    local playerSource = source
    table.insert(signedWeapons, {player = playerSource, item = networkId})
end)

AddEventHandler("playerDropped", function()
    local playerSource = source
    for _, weapon in ipairs(signedWeapons) do
        if weapon.player == playerSource then
            local entity = NetworkGetEntityFromNetworkId(weapon.item)
            DeleteEntity(entity)
        end
    end
end)

function RemoveCustomWeaponInventoryItem(itemName, playerSource)
    for index = 1, #Config.Weapons do
        local weapon = Config.Weapons[index]
        if itemName == weapon.DBName then
            TriggerClientEvent("RL_Custom_Weapons:Give" .. itemName, playerSource, weapon, true)
            break
        end
    end
    for index = 1, #Config.Katana do
        local katana = Config.Katana[index]
        if itemName == katana.DBName then
            -- The missing item suffix is intentional here to preserve the original event name.
            TriggerClientEvent("RL_Custom_Weapons:GiveKatana", playerSource, katana, true)
            break
        end
    end
end

if Config.FrameWork == "VORP" then
    AddEventHandler("vorp_inventory:Server:OnItemRemoved", function(item, playerSource)
        RemoveCustomWeaponInventoryItem(item.name, playerSource)
    end)
end

if Config.FrameWork == "RSG" then
    AddEventHandler("rsg-inventory:server:itemRemovedFromPlayerInventory", function(playerSource, itemName, amount, slot, reason)
        RemoveCustomWeaponInventoryItem(itemName, playerSource)
    end)
end

if Config.FrameWork == "REDEMRP" then
    RegisterServerEvent("redemrp_inventory:drop")
    AddEventHandler("redemrp_inventory:drop", function(item, amount)
        RemoveCustomWeaponInventoryItem(item.name, source)
    end)
    RegisterServerEvent("redemrp_inventory:giveItem")
    AddEventHandler("redemrp_inventory:giveItem", function(item, target)
        RemoveCustomWeaponInventoryItem(item.name, source)
    end)
end
