fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'Sasa CK'
author 'SASA SCRIPTS'
description 'Sasa-CK script for ESX roleplay servers. Allows admins to delete a player\'s character using /ck [id] command. Supports multi-role permissions, notifications (ESX/OkokNotify), and localization (CZ, EN).'
version '1.0'

server_scripts {
    '@es_extended/locale.lua',
    'sasa-server.lua',
    'sasa-config.lua'
}

escrow_ignore {
    'config.lua',
    'sasa-server.lua',
}

dependencies {
    'es_extended',
}