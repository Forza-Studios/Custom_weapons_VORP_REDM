-- Replaces Datafile.gxt2 from the offline mod (RedM can't stream .gxt2).
-- Transcribed 1:1 from the author's label file.
local LABELS = {
    ['WEAPON_MELEE_BROKEN_SWORD']       = 'Ludwig Sword',
    ['WEAPON_MELEE_HATCHET']            = 'Burial Blade',
    ['WEAPON_MELEE_HATCHET_DOUBLE_BIT'] = 'Rifle Spear',
    ['WEAPON_MELEE_HATCHET_DOUBLE_BIT_RUSTED'] = 'Rifle Spear Rusted',
    ['WEAPON_MELEE_HATCHET_HEWING']     = 'Moonlight Greatsword',
    ['WEAPON_MELEE_HATCHET_HUNTER']     = 'Saw Spear',
    ['WEAPON_MELEE_HATCHET_HUNTER_RUSTED'] = 'Saw Spear Rusted',
    ['WEAPON_MELEE_HATCHET_VIKING']     = 'Chikage',
    ['WEAPON_MELEE_KNIFE']              = 'Blade of Mercy',
    ['WEAPON_MELEE_MACHETE']            = 'Saw Cleaver',
    ['WEAPON_PISTOL_VOLCANIC']          = 'Repeating Pistol',
    ['WEAPON_REVOLVER_CATTLEMAN']       = 'Hunter Pistol',
    ['WEAPON_RIFLE_BOLTACTION']         = 'Hunter Blunderbuss',
    ['WEAPON_SHOTGUN_DOUBLEBARREL']     = 'Gehrman Gun',
}

Citizen.CreateThread(function()
    for key, text in pairs(LABELS) do
        AddTextEntry(key, text)
    end
end)
