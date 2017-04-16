local active = false
Citizen.CreateThread(function()
    while true do
    Wait(0)
    if IsControlPressed(1, 47) then
       while true do
            if active == false then
                active = true
                AddBlip()
            end 
            Wait(0)
            if(IsControlPressed(0, 47) == false) then
                active = false
                break
            end
       end
    end
    end
end)

function AddBlip()
    Wait(100)
    if active == true then
        local pos = GetEntityCoords(GetPlayerPed(-1))
        local Blip = AddBlipForCoord(pos.x, pos.y, pos.z)
        TriggerServerEvent('AddBlipPosition', pos.x, pos.y, pos.z)
        SetBlipSprite(Blip, 163)
        SetBlipColour(Blip, 1)
        SetBlipAsShortRange(Blip, true)
    end
end