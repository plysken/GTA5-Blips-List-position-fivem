-- Blip List id and color !
BlipListType ={
   ["airport"]={
    id=307,
    color=0
   },
   ["station"]={
    id=361,
    color=0
   },
   ["vehShop"]={
    id=326,
    color=0
   },
   ["trucking"]={
    id=67,
    color=0
   },
   ["feedShop"]={
    id=52,
    color=0
   },
   ["clothesShop"]={
    id=73,
    color=0
   },
   ["GunShop"]={
    id= 110,
    color=0
   },
   ["jobList"]={
    id=498,
    color=0
   },
   ["homeShop"]={
    id=374,
    color=0
   },
   ["garage"]={
    id=357,
    color=0
   },
   ["atm"]={
    id=207,
    color=2
   },
   ["none"]={
    id=163,
    color=1
   }
}

ListPostion = {
      -- airport
      { 
        Blip= {x = -1078.0, y = -3002.0, z = 13.0,}, 
        type="airport",
        description="Air port !",
      },

   -- trucking
      {
        Blip= {x = -406.421966552734, y = -2794.29443359375,  z= 6.00038003921509}, 
        type="trucking",
        description="Trucking Job !",
      },
      
   -- shop
      -- veh
      {
        Blip ={x = -33.803, y = -1102.322, z = 25.422},
        type="vehShop",
        description="Vehicul Shop !",
      },

      -- Gun Shop
      {
        Blip ={x = 74.504, y = -1971.366, z =19.788},
        type="GunShop",
        description="Gun Shop !",
      },
}

local Show_Atm = true
local Show_Clothes = true
local Show_FeedShop = true
local Show_Station = true

Citizen.CreateThread(function()
  
  Citizen.Trace("Blip list load ! \n")

  if Show_Atm then
    Copy(ListPostion, AtmList())
  end
  if Show_Clothes then
    Copy(ListPostion, ClothesList())
  end
  if Show_FeedShop then
    Copy(ListPostion, FeedShopList())
  end
  if Show_Station then
    Copy(ListPostion, StationList())
  end

  for i=1,#ListPostion do
     -- load positon for list
     local position = ListPostion[i].Blip

     -- convert position for Blip
     local Blip = AddBlipForCoord(position.x, position.y, position.z)

     -- load Type id and color for list
     local Type = BlipListType[ListPostion[i].type]

     SetBlipSprite(Blip, Type.id)
     SetBlipColour(Blip, Type.color)
     SetBlipAsShortRange(Blip, true)

  end

  Citizen.Trace("Blip list ok ! \n")
end)

function Copy(arrayD, arrayS)
    for i=1,#arrayS do
        table.insert(arrayD, arrayS[i])
    end
end