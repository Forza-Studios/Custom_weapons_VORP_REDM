Config = {}

Config.FrameWork 			= 'VORP'							-- VORP / REDEMRP / RSG / QBR

Config.HammerReplace		= true
Config.WeaponHammerReplace 	= 'weapon_melee_hammer'				-- weapon_melee_hammer

Config.SwordReplace			= true
Config.WeaponSwordReplace 	= 'weapon_melee_machete_collector'	-- weapon_melee_machete -- weapon_melee_machete_collector 	-- weapon_melee_machete_horror

Config.KnifeReplace			= true
Config.WeaponKnifeReplace 	= 'weapon_melee_knife_rustic'		-- weapon_melee_knife 	-- weapon_melee_knife_horror 		-- weapon_melee_knife_trader 	-- weapon_melee_knife_jawbone 	-- weapon_melee_knife_rustic

Config.SecureDetach	        = false								-- Delete Prop model if not attached, avoid floating models.

Config.TradNoJob			= "You don't have the right job"

-- Type     				= 	'SWORD' or 'KNIFE' or 'HAMMER' or 'SHIELD'  -- /!\ Don't remove Type DBName /!\
Config.Weapons = {
	{
		WheelName	=	'Sword of God',
		DBName		=	'sword01',
		Model		=   'sword_01',
		BoneID		= 	'CP_BACK',
		Joblock 	= 	{"gunsmith", "blacksmith"},				-- Delete if you do not want job restrictions
		Attach		= 	{-0.05, 0.1, 0.02, 90.0, 90.0, -65.0},
		Handle		= 	{0.18, 0.18, 0.02,  0.0, 79.0,  54.0},		
		Type     	= 	'SWORD'

	},
	{
		WheelName	=	'Sword of Demon',
		DBName		=	'sword02',
		Model		=   'sword_02',
		BoneID		= 	'CP_BACK',		
		Attach		= 	{0.0, -0.05, 0.02, -90.0, 90.0, 60.0},
		Handle		= 	{0.18, 0.18, 0.02, -75.0,-45.0, -45.0},
		Type     	= 	'SWORD'
	},
	{
		WheelName	=	'Native Spear',
		DBName		=	'spear01',
		Model		=   'spear_01',
		BoneID      =   'CP_BACK',
		Attach		= 	{-0.32, 0.2, -0.02, -6.0, -6.0, 50.0},
		Handle		= 	{0.12, 0.11, 0.0, 10.0, 0.0, -30.0},
		Type     	= 	'KNIFE'
	},	
	{
		WheelName	=	'Sword of Warrior',
		DBName		=	'sword03',
		Model		=   'p_sword01x',
		BoneID		= 	'SKEL_Spine0',		
		Attach		= 	{0.04, 0.26, -0.2, 135.0, 90.0, 0.0},
		Handle		= 	{0.06, -0.065, -0.04, 0.0, -85.0, -96.0},
		Type     	= 	'SWORD'
	},
	{
		WheelName	=	'Sword of Pirate',
		DBName		=	'sword04',
		Model		=   'w_melee_brokensword01',
		BoneID		= 	'SKEL_Spine0',		
		Attach		= 	{-0.02, 0.18, -0.2, -90.0, 0.0, 135.0},
		Handle		= 	{0.07, 0.02, -0.02, -48.0, 61.0, 0.0},
		Type     	= 	'SWORD'
	},
	{
		WheelName	=	'Sword of Bones',
		DBName		=	'sword05',
		Model		=   'sword_05',
		BoneID		= 	'SKEL_Spine0',		
		Attach		= 	{-0.02, 0.04, -0.21, -90.0, -4.0, 108.0},
		Handle		= 	{0.14, 0.12, -0.01, 75.0, -45.0, 160.0},
		Type     	= 	'SWORD'
	},	
	{
		WheelName	=	'Anciant Saber',
		DBName		=	'saber01',
		Model		=   'saber_01',
		BoneID		= 	'SKEL_Spine0',		
		Attach		= 	{-0.04, 0.2, -0.2, -90.0, 0.0, 135.0},
		Handle		= 	{0.095, 0.055, -0.02, -100.0, 187.0, -36.0},
		Type     	= 	'SWORD'	
	},
	{
		WheelName	=	'White Saber',
		DBName		=	'saber02',
		Model		=   'saber_02',
		BoneID		= 	'SKEL_Spine0',
		Attach		= 	{0.0, 0.2, -0.2, -90.0, 180.0, 135.0},
		Handle		= 	{0.07, 0.02, -0.02, -100.0, 187.0, -36.0},
		Type     	= 	'SWORD'	
	},
	{
		WheelName	=	'Oriental Saber',
		DBName		=	'saber03',
		Model		=   's_re_dancersword01x',
		BoneID		= 	'SKEL_Spine0',
		Attach		= 	{-0.03, 0.14, -0.21, 135.0, 95.0, 0.0},		
		Handle		= 	{0.08, 0.03, -0.03, 20.0, 79.0, 71.0},
		Type     	= 	'SWORD'		
	},
	{
		WheelName	=	'Butcher Cleaver',
		DBName		=	'cleaver01',
		Model		=   'p_cleaver01x',
		BoneID		= 	'SKEL_Spine0',
		Attach		= 	{0.08, 0.1, -0.2, -90.0, 0.0, 110.0},		
		Handle		= 	{0.03, -0.04, -0.04, 77.0, -30.0, 150.0},
		Type     	= 	'SWORD'		
	},	
	{
		WheelName	=	'Dwarf Hammer',
		DBName		=	'hammer01',
		Model		=   'hammer_01',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.1, -0.1, 0.2, 90.0, 0.0, -45.0},
		Handle		= 	{0.145, 0.13, -0.03, -92.0, 180.0, -36.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Sledge Hammer',
		DBName		=	'hammer02',
		Model		=   'p_sledgehammer02x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.3, -0.2, 0.2, -90.0, -10.0, -45.0},
		Handle		= 	{-0.08, -0.19, -0.025, -88.0, 35.0, -36.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Clamp',
		DBName		=	'clamp01',
		Model		=   'p_clamphand01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.16, 0.0, 0.2, 0.0, 0.0, 135.0},
		Handle		= 	{0.09, 0.12, -0.02, 0.0, 0.0, 155.0},
		Type     	= 	'HAMMER'
	},	
	{
		WheelName	=	'Club',
		DBName		=	'club01',
		Model		=   'p_club01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.1, 0.0, 0.2, 90.0, -90.0, 30.0},
		Handle		= 	{0.14, 0.12, 0.0, 10.0, 0.0, -38.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Police Club',
		DBName		=	'club02',
		Model		=   'p_billyclub01x',
		BoneID      =   'SKEL_Spine0',
		--Joblock 	= 	{"police", "marshal"},	
		Attach		= 	{0.0, 0.0, 0.2, 0.0, 0.0, 0.0},
		Handle		= 	{0.05, 0.0, -0.03, -15.0, 175.0, 56.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Wooden Club',
		DBName		=	'club03',
		Model		=   'p_club02x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{0.1, 0.1, 0.18, 0.0, 10.0, 20.0},
		Handle		= 	{-0.02, -0.08, -0.05, 0.0, 167.0, 50.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Primitive Club',
		DBName		=	'club04',
		Model		=   'club_04',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{0.05, 0.1, 0.2, -90.0, 90.0, -45.0},
		Handle		= 	{0.21, 0.22, 0.01, -77.0, -50.0, -45.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Native Club',
		DBName		=	'club05',
		Model		=   'club_05',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.05, 0.1, 0.2, 130.0, 90.0, 0.0},
		Handle		= 	{0.2, 0.16, -0.02, -79.0, -50.0, -45.0},
		Type     	= 	'HAMMER'
	},	
	{
		WheelName	=	'Bone Club',
		DBName		=	'club06',
		Model		=   'p_humanskeleton02x_thighr',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.1, 0.0, 0.2, 0.0, 180.0, -45.0},
		Handle		= 	{0.16, 0.13, 0.01, 14.0, 180.0, 147.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Bat Baseball',
		DBName		=	'bat01',
		Model		=   'bat_01',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.3, 0.0, 0.25, 85.0, 0.0, -80.0},
		Handle		= 	{0.22, 0.25, -0.01, -86.0, 0.0, -30.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Bat Studded',
		DBName		=	'bat02',
		Model		=   'bat_02',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.3, 0.0, 0.25, 85.0, 0.0, -80.0},
		Handle		= 	{0.22, 0.25, -0.01, -86.0, 0.0, -30.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Crowbar',
		DBName		=	'crowbar01',
		Model		=   'p_prybar01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.7, 0.05, 0.22, 0.0, 90.0, 0.0},
		Handle		= 	{-0.08, -0.17, -0.06, 82.0, 0.0, -214.0},
		Type     	= 	'HAMMER'
	},	
	{
		WheelName	=	'Pan',
		DBName		=	'pan01',
		Model		=   'p_pan01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.21, -0.05, -0.17, 10.0, -160.0, 100.0},
		Handle		= 	{0.22, 0.17, -0.05, 4.0, -65.0, -30.0},
		Type     	= 	'HAMMER'
	},
	{
		WheelName	=	'Big Pan',
		DBName		=	'pan02',
		Model		=   'p_panlg01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.32, -0.06, -0.2, -23.0, -170.0, 220.0},
		Handle		= 	{0.18, 0.28, -0.06, 55.0, 30.0, -110.0},
		Type     	= 	'HAMMER'
	},	
	{
		WheelName	=	'Wooden Stake',
		DBName		=	'stake01',
		Model		=   'p_woodstake01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.05, 0.02, -0.2, 90.0, 0.0, 125.0},
		Handle		= 	{0.1, 0.07, -0.02, 65.0, -100.0, 0.0},
		Type     	= 	'KNIFE'
	},
	{
		WheelName	=	'Metal Stake',
		DBName		=	'stake02',
		Model		=   'p_picketpin01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{0.02, 0.02, -0.22, 0.0, 90.0, 20.0},
		Handle		= 	{0.05, -0.02, -0.02, 90.0, -180.0, -30.0},
		Type     	= 	'KNIFE'
	},
	{
		WheelName	=	'Large Knife',
		DBName		=	'knife01',
		Model		=   'p_butcherknife01x',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.1, -0.02, -0.21, 0.0, 0.0, -50.0},
		Handle		= 	{ 0.17, 0.2, 0.0, 5.0, 155.0, 153.0},
		Type     	= 	'KNIFE'
	},	
	{
		WheelName	=	'Shield of God',
		DBName		=	'shield01',
		Model		=   'shield_01',
		BoneID      =   'CP_L_Forearm',
		Handle		= 	{0.0, 0.0, 0.0, 70.0, 10.0, 0.0},
		OnHorse     = 	{-0.05, -0.05, 0.025, 70.0, 0.0, 40.0},
		Holding     = 	{0.0, 0.025, 0.0, 0.0, 40.0, 0.0},
		Type     	= 	'SHIELD'
	},
	{
		WheelName	=	'Shield of Demon',
		DBName		=	'shield02',
		Model		=   'shield_02',
		BoneID      =   'CP_L_Forearm',		
		Handle		= 	{0.05, -0.035, -0.025, 70.0, 10.0, 0.0},
		OnHorse     = 	{-0.05, -0.05, 0.025, 70.0, 0.0, 40.0},
		Holding     = 	{0.0, 0.01, 0.0,  0.0,  10.0, 0.0},
		Type     	= 	'SHIELD'		
	},
	{
		WheelName	=	'Shield of Dragon',
		DBName		=	'shield03',
		Model		=   'shield_03',
		BoneID      =   'CP_L_Forearm',		
		Handle		= 	{0.05, 0.05, 0.0, 90.0, -30.0, -90.0},
		OnHorse     = 	{-0.12, 0.0, 0.02, 80.0, 6.0, 100.0},
		Holding     = 	{-0.05, 0.05, -0.05, 10.0, 94.0, 0.0},
		Type     	= 	'SHIELD'		
	},
	{
		WheelName	=	'Shield of Dwarf',
		DBName		=	'shield04',
		Model		=   'shield_04',
		BoneID      =   'CP_L_Forearm',		
		Handle		= 	{0.05, 0.05, 0.0, 100.0, -15.0, -160.0},
		OnHorse     = 	{-0.12, 0.0, 0.02, 80.0, 6.0, 100.0},
		Holding     = 	{-0.05, 0.05, -0.05, 10.0, 94.0, 0.0},
		Type     	= 	'SHIELD'		
	},
	{
		WheelName	=	'Shield of Viking',
		DBName		=	'shield05',
		Model		=   'shield_05',
		BoneID      =   'CP_L_Forearm',	
		Handle		= 	{0.05, 0.025, 0.02, 85.0, -20.0, -90.0},
		OnHorse     = 	{-0.12, 0.0, 0.02, 80.0, 6.0, 100.0},
		Holding     = 	{-0.05, 0.05, -0.05, 10.0, 94.0, 0.0},
		Type     	= 	'SHIELD'		
	},
	{
		WheelName	=	'Shield of Viking',
		DBName		=	'shield06',
		Model		=   'shield_06',
		BoneID      =   'CP_L_Forearm',		
		Handle		= 	{0.03, 0.01, 0.03, 85.0, 8.0, 0.0},
		OnHorse     = 	{-0.12, 0.0, 0.02, 80.0, 6.0, 100.0},
		Holding     = 	{-0.05, 0.05, -0.05, 10.0, 94.0, 0.0},
		Type     	= 	'SHIELD'		
	},
	{
		WheelName	=	'Shield of Bones',
		DBName		=	'shield07',
		Model		=   'shield_07',
		BoneID      =   'CP_L_Forearm',		
		Handle		= 	{0.03, 0.0, 0.03, 85.0, -25.0, -90.0},
		OnHorse     = 	{0.12, 0.04, 0.04, 85.0, -20.0, -90.0},
		Holding     = 	{0.0, 0.11, -0.03, 100.0, 90.0, 85.0},
		Type     	= 	'SHIELD'		
	},

}

Config.Katana = {
	{
		WheelName	=	'Katana Blue',
		DBName		=	'katana01',
		Model1		=   'katana_01a',
		BoneID      =   'CP_BACK',
		Attach		= 	{0.18, 0.19, 0.11, 105.0, 0.0, -55.0},		
		Model2		=   'katana_01b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',									-- SWORD or KNIFE
		-- Joblock 	= 	{"japanese", "chinese"},
	},
	{
		WheelName	=	'Katana Green',
		DBName		=	'katana02',
		Model1		=   'katana_02a',
		BoneID      =   'CP_BACK',
		Attach		= 	{0.2, -0.24, 0.11, -105.0, 0.0, 55.0},		
		Model2		=   'katana_02b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',
		--Joblock 	= 	{"japanese", "chinese"},
	},
	{
		WheelName	=	'Katana Red',
		DBName		=	'katana03',
		Model1		=   'katana_03a',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{0.15, 0.15, 0.18, 80.0, 0.0, -60.0},		
		Model2		=   'katana_03b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',
		--Joblock 	= 	{"japanese", "chinese"},
	},
	{
		WheelName	=	'Katana Yellow',
		DBName		=	'katana04',
		Model1		=   'katana_04a',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.63, -0.25, 0.3, 80.0, 0.0, -60.0},		
		Model2		=   'katana_04b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',
		--Joblock 	= 	{"japanese", "chinese"},
	},
	{
		WheelName	=	'Katana Purple',
		DBName		=	'katana05',
		Model1		=   'katana_05a',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.63, -0.25, 0.3, 80.0, 0.0, -60.0},		
		Model2		=   'katana_05b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',
		--Joblock 	= 	{"japanese", "chinese"},
	},
	{
		WheelName	=	'Katana Grey',
		DBName		=	'katana06',
		Model1		=   'katana_06a',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.63, -0.25, 0.3, 80.0, 0.0, -60.0},		
		Model2		=   'katana_06b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',
		--Joblock 	= 	{"japanese", "chinese"},
	},
	{
		WheelName	=	'Katana Custom',
		DBName		=	'katana07',
		Model1		=   'katana_04a',
		BoneID      =   'SKEL_Spine0',
		Attach		= 	{-0.63, -0.25, 0.3, 80.0, 0.0, -60.0},		
		Model2		=   'katana_03b',
		Handle		= 	{0.09, 0.05, -0.01, -115.0, 215.0, 0.0},
		Type     	= 	'SWORD',
		--Joblock 	= 	{"japanese", "chinese"},
	},
}