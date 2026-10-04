This version is fully compatible with RSG

Follow these steps for installation :

-- RSG ---------------------------------------------------------------------------
[1] Set Config.Framework = 'RSG' in Config file

[2] Copy inventory image pack to rsg-inventory/html/images

[3] Add items to rsg-core/shared/items.lua
	-- Custom Weapons
	sword01  = { name = 'sword01',  label = 'Sword of God',      weight = 100, type = 'item', image = 'sword01.png',  unique = true, useable = true, shouldClose = true, description = 'Sword of God' },
	sword02  = { name = 'sword02',  label = 'Sword of Demon',    weight = 100, type = 'item', image = 'sword02.png',  unique = true, useable = true, shouldClose = true, description = 'Sword of Demon' },
	sword03  = { name = 'sword03',  label = 'Sword of Warrior',  weight = 100, type = 'item', image = 'sword03.png',  unique = true, useable = true, shouldClose = true, description = 'Sword of Warrior' },
	sword04  = { name = 'sword04',  label = 'Sword of Pirate',   weight = 100, type = 'item', image = 'sword04.png',  unique = true, useable = true, shouldClose = true, description = 'Sword of Pirate' },
	sword05  = { name = 'sword05',  label = 'Sword of Bone',     weight = 100, type = 'item', image = 'sword05.png',  unique = true, useable = true, shouldClose = true, description = 'Sword of Bone' },

	saber01  = { name = 'saber01',  label = 'Ancient Saber',     weight = 100, type = 'item', image = 'saber01.png',  unique = true, useable = true, shouldClose = true, description = 'Saber of ancient times' },
	saber02  = { name = 'saber02',  label = 'White Saber',       weight = 100, type = 'item', image = 'saber02.png',  unique = true, useable = true, shouldClose = true, description = 'Saber with a purifying blade' },
	saber03  = { name = 'saber03',  label = 'Oriental Saber',    weight = 100, type = 'item', image = 'saber03.png',  unique = true, useable = true, shouldClose = true, description = 'Saber of unrivaled sharpness' },

	spear01  = { name = 'spear01',  label = 'Native Spear',      weight = 100, type = 'item', image = 'spear01.png',  unique = true, useable = true, shouldClose = true, description = 'Native Spear' },

	knife01  = { name = 'knife01',  label = 'Butcher Knife',     weight = 100, type = 'item', image = 'knife01.png',  unique = true, useable = true, shouldClose = true, description = 'Butcher Knife' },
	cleaver01= { name = 'cleaver01',label = 'Butcher Cleaver',   weight = 100, type = 'item', image = 'cleaver01.png',unique = true, useable = true, shouldClose = true, description = 'Butcher Cleaver' },

	katana01 = { name = 'katana01', label = 'Katana Blue',       weight = 100, type = 'item', image = 'katana01.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },
	katana02 = { name = 'katana02', label = 'Katana Green',      weight = 100, type = 'item', image = 'katana02.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },
	katana03 = { name = 'katana03', label = 'Katana Red',        weight = 100, type = 'item', image = 'katana03.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },
	katana04 = { name = 'katana04', label = 'Katana Yellow',     weight = 100, type = 'item', image = 'katana04.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },
	katana05 = { name = 'katana05', label = 'Katana Purple',     weight = 100, type = 'item', image = 'katana05.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },
	katana06 = { name = 'katana06', label = 'Katana Grey',       weight = 100, type = 'item', image = 'katana06.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },
	katana07 = { name = 'katana07', label = 'Katana Custom',     weight = 100, type = 'item', image = 'katana07.png', unique = true, useable = true, shouldClose = true, description = 'Katana legendary' },

	hammer01 = { name = 'hammer01', label = 'Dwarf Hammer',      weight = 100, type = 'item', image = 'hammer01.png', unique = true, useable = true, shouldClose = true, description = 'Hammer hardened by a blacksmith' },
	hammer02 = { name = 'hammer02', label = 'Sledge Hammer',     weight = 100, type = 'item', image = 'hammer02.png', unique = true, useable = true, shouldClose = true, description = 'Sledge Hammer' },

	clamp01  = { name = 'clamp01',  label = 'Clamp',             weight = 100, type = 'item', image = 'clamp01.png',  unique = true, useable = true, shouldClose = true, description = 'Clamp' },

	club01   = { name = 'club01',   label = 'Simple Club',       weight = 100, type = 'item', image = 'club01.png',   unique = true, useable = true, shouldClose = true, description = 'Simple Club' },
	club02   = { name = 'club02',   label = 'Police Club',       weight = 100, type = 'item', image = 'club02.png',   unique = true, useable = true, shouldClose = true, description = 'Police Club' },
	club03   = { name = 'club03',   label = 'Wooden Club',       weight = 100, type = 'item', image = 'club03.png',   unique = true, useable = true, shouldClose = true, description = 'Wooden Club' },
	club04   = { name = 'club04',   label = 'Primitive Club',    weight = 100, type = 'item', image = 'club04.png',   unique = true, useable = true, shouldClose = true, description = 'Primitive Club' },
	club05   = { name = 'club05',   label = 'Native Club',       weight = 100, type = 'item', image = 'club05.png',   unique = true, useable = true, shouldClose = true, description = 'Native Club' },
	club06   = { name = 'club06',   label = 'Bone Club',         weight = 100, type = 'item', image = 'club06.png',   unique = true, useable = true, shouldClose = true, description = 'Bone Club' },

	bat01    = { name = 'bat01',    label = 'Baseball Bat',      weight = 100, type = 'item', image = 'bat01.png',    unique = true, useable = true, shouldClose = true, description = 'Baseball Bat' },
	bat02    = { name = 'bat02',    label = 'Baseball Bat with nails', weight = 100, type = 'item', image = 'bat02.png', unique = true, useable = true, shouldClose = true, description = 'Baseball Bat with Nail' },

	crowbar01= { name = 'crowbar01',label = 'Crowbar',           weight = 100, type = 'item', image = 'crowbar01.png',unique = true, useable = true, shouldClose = true, description = 'Crowbar' },

	pan01    = { name = 'pan01',    label = 'Pan',               weight = 100, type = 'item', image = 'pan01.png',    unique = true, useable = true, shouldClose = true, description = 'Pan' },
	pan02    = { name = 'pan02',    label = 'Big Pan',           weight = 100, type = 'item', image = 'pan02.png',    unique = true, useable = true, shouldClose = true, description = 'Big Pan' },

	stake01  = { name = 'stake01',  label = 'Wooden Stake',      weight = 100, type = 'item', image = 'stake01.png',  unique = true, useable = true, shouldClose = true, description = 'Wooden Stake' },
	stake02  = { name = 'stake02',  label = 'Metal Stake',       weight = 100, type = 'item', image = 'stake02.png',  unique = true, useable = true, shouldClose = true, description = 'Metal Stake' },

	shield01 = { name = 'shield01', label = 'Shield of God',     weight = 100, type = 'item', image = 'shield01.png', unique = true, useable = true, shouldClose = true, description = 'Shield blessed by the gods' },
	shield02 = { name = 'shield02', label = 'Shield of Demon',   weight = 100, type = 'item', image = 'shield02.png', unique = true, useable = true, shouldClose = true, description = 'Shield cursed by a demon' },
	shield03 = { name = 'shield03', label = 'Shield of Dragon',  weight = 100, type = 'item', image = 'shield03.png', unique = true, useable = true, shouldClose = true, description = 'Shield decorated with a dragon' },
	shield04 = { name = 'shield04', label = 'Shield of Dwarf',   weight = 100, type = 'item', image = 'shield04.png', unique = true, useable = true, shouldClose = true, description = 'Shield forged by dwarf' },
	shield05 = { name = 'shield05', label = 'Shield of Viking',  weight = 100, type = 'item', image = 'shield05.png', unique = true, useable = true, shouldClose = true, description = 'Shield forged by viking' },
	shield06 = { name = 'shield06', label = 'Shield of Viking',  weight = 100, type = 'item', image = 'shield06.png', unique = true, useable = true, shouldClose = true, description = 'Shield forged with viking' },
	shield07 = { name = 'shield07', label = 'Shield of Bone',    weight = 100, type = 'item', image = 'shield07.png', unique = true, useable = true, shouldClose = true, description = 'Shield of Bone' },
			
[4] in the file rsg-essentials/client/weaponcheck.lua
	- Replace this event rsg-core:client:RemoveWeaponFromTab by :

	RegisterNetEvent('rsg-core:client:RemoveWeaponFromTab', function(weaponName)

		local ped = PlayerPedId()
		local weaponHash = GetHashKey(weaponName)
		local currentWeapon = GetPedCurrentHeldWeapon(ped)

		local serials = exports['rsg-weapons']:weaponInHands()
		local serial = serials and serials[weaponHash]

		local weaponTypeSlot = Citizen.InvokeNative(0x46F032B8DDF46CDE, weaponHash)
		local weaponInSlot = Citizen.InvokeNative(0xDBC4B552B2AE9A83, ped, weaponTypeSlot)

		if currentWeapon == weaponHash then
			SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
			Wait(100)
		end

		if weaponInSlot and serial then
			exports['rsg-weapons']:RemoveWeaponFromPeds(weaponName, serial)
			return
		end

		if weaponInSlot or not serial then
			RemoveWeaponFromPed(ped, weaponHash, true, `REMOVE_REASON_DROP`)
			Wait(100)
			SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
		end
	end)

	- Delete or comment the loop line 32 to 50

[5] in the file rsg-inventory//server/exports.lua
	- Add this line 848  :

	if RSGCore.Shared.Items[item:lower()]['type'] == 'equipment' and player and not move then
		TriggerClientEvent('rsg-core:client:RemoveWeaponFromTab', identifier, item)
	end

[6] Use items to give you weapons