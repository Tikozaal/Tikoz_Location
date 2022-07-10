ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local menucross = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Location Cross"},
    Data = {currentMenu = "Menu", "Test"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

                if btn.name == "Crf450 Petit Roue" then
                    locacrossCrf()
                    CloseMenu()
                elseif btn.name == "KTM sx250f" then
                    locacrossktm()
                    CloseMenu()
                elseif btn.name == "KTM sx450f" then
                    locacrossktm2()
                    CloseMenu()
                elseif btn.name == "KTM sxRedbull" then
                    locacrossktm3()
                    CloseMenu()
                elseif btn.name == "KTM sx450wilvo" then
                    locacrossktm4()
                    CloseMenu()
                elseif btn.name == "YZ450F Fluor" then
                    locacrossktm5()
                    CloseMenu()
                
                elseif btn.name == "Husqvarna 450" then
                    locacrossktm6()
                    CloseMenu()
                
                elseif btn.name == "CR450FSpecialEdition" then
                    locacrossktm7()
                    CloseMenu()
                end
        end,
},
    Menu = {
        ["Menu"] = {
            b = {
                {name = "Crf450 Petit Roue", ask = "~g~25$", askX = true},
                {name = "KTM sx250f", ask = "~g~25$", askX = true},
                {name = "KTM sx450f", ask = "~g~25$", askX = true},
                {name = "KTM sxRedbull", ask = "~g~25$", askX = true},
                {name = "KTM sx450wilvo", ask = "~g~25$", askX = true},
                {name = "YZ450F Fluor", ask = "~g~25$", askX = true},
                {name = "Husqvarna 450", ask = "~g~25$", askX = true},
                {name = "CR450FSpecialEdition", ask = "~g~25$", askX = true},

            }
        }
    }
}

function locacrossCrf()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "2015crf450"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacross()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "2015crf450"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "sxfhitachi"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm2()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "sxfmarchetti"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm3()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "sxfredbull"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm4()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "sxfwilvo"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm5()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "yz450f"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm6()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "fc450"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

function locacrossktm7()
    TriggerServerEvent('Tikoz:LocCrossMoto')
    ESX.ShowAdvancedNotification('Terrain de cross', 'Location', "Votre ~b~moto cross~s~ arrive, pour avez payé ~g~25$", 'CHAR_MOLLY', 8)
    local ped = PlayerPedId()
    local cr = "crf450r"
    local ch = GetHashKey(cr)
    RequestModel(ch)
    while not HasModelLoaded(ch) do Citizen.Wait(0) end
    local creacross = CreateVehicle(ch, 1532.52, -3277.69, 28.41, 83.91, false, false)
    TaskWarpPedIntoVehicle(ped, creacross, -1)
end

Citizen.CreateThread(function()
    local pi = "a_m_y_motox_01"
    local po = GetHashKey(pi)
    RequestModel(po)
    while not HasModelLoaded(po) do Citizen.Wait(0) end
    local pipo = CreatePed(6, po, 1525.75, -3272.2, 28.41, 184.15, false, false)

    while true do 

        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local menu = Config.Cross.Menu
        local dist = #(pos - menu)

        if dist <= 2 then

            ESX.ShowHelpNotification('Appuie sur ~INPUT_CONTEXT~ pour ouvrir le ~b~menu')

            DrawMarker(6, menu, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

            if IsControlJustPressed(1, 51) then
                CreateMenu(menucross)
            end

        else
            Citizen.Wait(1000)
        end
        Citizen.Wait(0)
    end
end)