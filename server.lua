RegisterServerEvent("AddBlipPosition")

AddEventHandler("AddBlipPosition", function(x, y, z)
    file = io.open("Coords.txt", "a")
    if file then
        file:write("{x=" .. x .. ",y=" .. y .. ",z=" .. z .. "},")
        file:write("\n")
    end
    file:close()
end)