fx_version 'cerulean'
author '_forza'
version '1.0.0'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

-- Bloodborne Weapons V2: 12 PURE REPLACE weapons (vanilla drawable names).
-- stream/ files override vanilla in place. No data_file lines needed.
-- data/weapons.ymt (global 4MB replace) is intentionally NOT mounted:
-- global weapons.ymt streaming is a known RedM crash vector (0x1F045E58:441
-- class). Models, icons and labels below work without it.
-- To experiment later: uncomment both lines, full-restart, watch F8.
-- files { 'data/weapons.ymt' }
-- data_file 'WEAPON_METADATA_FILE' 'data/weapons.ymt'

client_script 'client.lua'
