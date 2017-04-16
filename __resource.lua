description 'List Blips Position'

client_script 'list.lua'

client_scripts {
    'list/atm.lua',
    'list/clothes.lua',
    'list/station.lua',
    'list/feedShop.lua',
}

server_script 'server.lua'

export 'AtmList'
export 'ClothesList'
export 'FeedShopList'
export 'StationList'