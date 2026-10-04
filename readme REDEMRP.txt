This version is fully compatible with REDEMRP

Follow these steps for installation :

-- REDEMRP -----------------------------------------------------------------------
[1] Copy inventory image pack to redemrp_inventory/html/items

[2] Add items to redemrp_inventory/config.lua
    ["sword01"] = {
        label = "Sword of God",
        description = "Sword of Gods",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/sword01.png",
        type = "item_standard"
    },
	["sword02"] = {
        label = "Sword of Demon",
        description = "Sword of Demons",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/sword02.png",
        type = "item_standard"
    },
    ["sword03"] = {
        label = "Sword of Warrior",
        description = "Sword of Warriors",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/sword03.png",
        type = "item_standard"
    },
	["sword04"] = {
        label = "Sword of Pirate",
        description = "Sword of Pirates",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/sword04.png",
        type = "item_standard"
    },
	["sword05"] = {
        label = "Sword of Bone",
        description = "Sword of Bone",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/sword05.png",
        type = "item_standard"
    },	
	["saber01"] = {
        label = "Ancient Saber",
        description = "Saber of ancient times",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/saber01.png",
        type = "item_standard"
    },
    ["saber02"] = {
        label = "Sword of Warrior",
        description = "Saber with a purifying blade",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/saber02.png",
        type = "item_standard"
    },
	["saber03"] = {
        label = "Sword of Pirate",
        description = "Saber of unrivaled sharpness",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/saber03.png",
        type = "item_standard"
    },
	["spear01"] = {
        label = "Natif spear",
        description = "Natif spear",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/spear01.png",
        type = "item_standard"
    },	
	["knife01"] = {
        label = "Big Knife",
        description = "Big Knife",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/knife01.png",
        type = "item_standard"
    },
	["cleaver01"] = {
        label = "Butcher Cleaver",
        description = "Butcher Cleaver",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/cleaver01.png",
        type = "item_standard"
    },	
    ["katana01"] = {
        label = "Katana Blue",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana01.png",
        type = "item_standard"
    },
    ["katana02"] = {
        label = "Katana Green",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana02.png",
        type = "item_standard"
    },
    ["katana03"] = {
        label = "Katana Red",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana03.png",
        type = "item_standard"
    },
    ["katana04"] = {
        label = "Katana Yellow",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana04.png",
        type = "item_standard"
    },
    ["katana05"] = {
        label = "Katana Purple",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana05.png",
        type = "item_standard"
    },
    ["katana06"] = {
        label = "Katana Grey",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana06.png",
        type = "item_standard"
    },
    ["katana07"] = {
        label = "Katana Custom",
        description = "Katana legendary",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/katana07.png",
        type = "item_standard"
    },	
	["hammer01"] = {
        label = "Dwarf Hammer",
        description = "Hammer hardened by a blacksmith",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/hammer01.png",
        type = "item_standard"
    },
	["hammer02"] = {
        label = "Sledge Hammer",
        description = "Sledge Hammer",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/hammer02.png",
        type = "item_standard"
    }, 
	["clamp01"] = {
        label = "Clamp",
        description = "Clamp",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/clamp01.png",
        type = "item_standard"
    },	
	["club01"] = {
        label = "club",
        description = "Simple club",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/club01.png",
        type = "item_standard"
    },
	["club02"] = {
        label = "Police Club",
        description = "Club Police",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/club02.png",
        type = "item_standard"
    },
	["club03"] = {
        label = "Wooden Club",
        description = "Wooden Club",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/club03.png",
        type = "item_standard"
    },
	["club04"] = {
        label = "Primitive Club",
        description = "Primitive Club",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/club04.png",
        type = "item_standard"
    },
	["club05"] = {
        label = "Native Club",
        description = "Native Club",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/club05.png",
        type = "item_standard"
    },
	["club06"] = {
        label = "Bone Club",
        description = "Bone Club",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/club06.png",
        type = "item_standard"
    },
	["bat01"] = {
        label = "Baseball Bat",
        description = "Baseball Bat",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/bat01.png",
        type = "item_standard"
    },
	["bat02"] = {
        label = "Baseball Bat with nails",
        description = "Baseball Bat with nails",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/bat02.png",
        type = "item_standard"
    },	
	["crowbar01"] = {
        label = "Crowbar",
        description = "Crowbar",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/crowbar01.png",
        type = "item_standard"
    },
	["pan01"] = {
        label = "Pan",
        description = "Pan",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/pan01.png",
        type = "item_standard"
    },
	["pan02"] = {
        label = "Big Pan",
        description = "Big Pan",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/pan02.png",
        type = "item_standard"
    },
	["stake01"] = {
        label = "Wooden Stake",
        description = "Wooden Stake",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/stake01.png",
        type = "item_standard"
    },
	["stake02"] = {
        label = "Metal Stake",
        description = "Metal Stake",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/stake03.png",
        type = "item_standard"
    },
	["shield01"] = {
        label = "Shield of God",
        description = "Shield blessed by the gods",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield01.png",
        type = "item_standard"
    },
    ["shield02"] = {
        label = "Shield of Demon",
        description = "Shield cursed by a demon",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield02.png",
        type = "item_standard"
    },
	["shield03"] = {
        label = "Shield of Dragon",
        description = "Shield decorated with a dragon",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield03.png",
        type = "item_standard"
    },
	["shield04"] = {
        label = "Shield of Dwarf",
        description = "Shield forged by dwarf",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield04.png",
        type = "item_standard"
    },
    ["shield05"] = {
        label = "Shield of Viking",
        description = "Shield forged by viking",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield05.png",
        type = "item_standard"
    },
	["shield06"] = {
        label = "Shield of Viking",
        description = "Shield forged by viking",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield06.png",
        type = "item_standard"
    },
	["shield07"] = {
        label = "Shield of Bone",
        description = "Shield of Bone",
        weight = 0.01,
        canBeDropped = true,
        canBeUsed = true,
        limit = 1,
        imgsrc = "items/shield07.png",
        type = "item_standard"
    },	

[3] Use items to give you weapons


