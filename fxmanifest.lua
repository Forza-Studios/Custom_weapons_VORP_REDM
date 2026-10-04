game 'rdr3'
lua54 'yes'
version '0.7.8'
author 'Areski'
fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {
	'config.lua',
	'client.lua',
	'notification.lua'
}

server_scripts {
	'config.lua',
	'server.lua'
}

files {
	'stream/[YTYP]/*.ytyp',
}

data_file 'DLC_ITYP_REQUEST' 'stream/[YTYP]/*.ytyp'