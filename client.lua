ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local menuloc = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Menu Location"},
    Data = { currentMenu = "Menu", "Test"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result) 

            if btn.slidenum == 1 and btn.name == "Voiture" then
                TriggerServerEvent("Tikoz:LocVoitureTrenteM")
                CloseMenu()
            elseif btn.slidenum == 2 and btn.name == "Voiture" then
                TriggerServerEvent("Tikoz:LocVoitureUneH")
                CloseMenu()
            elseif btn.slidenum == 3 and btn.name == "Voiture" then
                TriggerServerEvent("Tikoz:LocVoitureDeuxH")
                CloseMenu()
            elseif btn.slidenum == 1 and btn.name == "Scooter" then
                TriggerServerEvent("Tikoz:LocScoot")
                CloseMenu()
            elseif btn.slidenum == 2 and btn.name == "Scooter" then
                TriggerServerEvent("Tikoz:LocScootUneH")
                CloseMenu()
            elseif btn.slidenum == 3 and btn.name == "Scooter" then
                TriggerServerEvent("Tikoz:LocScootDeuxH")
                CloseMenu()
            end
        end,
},
    Menu = {
        ["Menu"] = {
            b = {
                {name = "Voiture", slidemax = {"~b~30 minutes ~s~= ~g~75$", "~b~1 Heure ~s~= ~g~150$", "~b~2 Heures ~s~= ~g~250$"}},
                {name = "Scooter", slidemax = {"~b~30 minutes ~s~= ~g~45$", "~b~1 Heure ~s~= ~g~100$", "~b~2 Heures ~s~= ~g~130$"}},
            }
        }
    }
}

Citizen.CreateThread(function()

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end
    local creaped = CreatePed(6, pi, Config.Pos.Ped, false, false)

    local blip = AddBlipForCoord(Config.Pos.Ped)
    SetBlipSprite (blip, 226)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipColour (blip, 43)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Location")
    EndTextCommandSetBlipName(blip)

    while true do 

        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local menu = Config.Pos.Menu
        local dist = GetDistanceBetweenCoords(pos, menu, true)

        if dist <= 2 then

            ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour loué un ~b~véhicule")

            DrawMarker(6, Config.Pos.Menu, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

            if IsControlJustPressed(1, 51) then 
                CreateMenu(menuloc)
            end
        else
        Citizen.Wait(1000)
        end

        Citizen.Wait(0)
    end
end)

RegisterNetEvent("Tikoz:Carloc")
AddEventHandler("Tikoz:Carloc", function()

        local po = "a_m_y_beachvesp_01"
        local pi = GetHashKey(po)

        RequestModel(pi)

        while not HasModelLoaded(pi) do Citizen.Wait(0) end

        local creaped = CreatePed(6, pi, Config.Pos.Spawn, true, false)
    
        local car = Config.Name.Car
        local carh = GetHashKey(car)

        RequestModel(carh)

        while not HasModelLoaded(carh) do Citizen.Wait(0) end
    
        local createcar = CreateVehicle(carh, Config.Pos.Spawn, true, false)

        SetPedIntoVehicle(creaped, createcar, -1)
        
        TaskVehicleDriveToCoord(creaped, createcar, Config.Pos.Menu, 20.0, 0, GetEntityModel(carh), 411, 10.0)
    
        Citizen.Wait(13000)

        TaskWanderStandard(creaped, 10.0, 10)      
        --- 25 Minutes = 1500000  ---  1seconde = 1000 "milliseconde"
        Citizen.Wait(1500000)

        ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location prend fin dans ~b~5 minutes", 'CHAR_MOLLY', 8)
        --- Les 5 dernières minutes de la location. 5 minutes = 300000 ---
        Citizen.Wait(300000)

        ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location est ~b~terminé~s~, un employé vas venir cherche la ~b~blista", 'CHAR_MOLLY', 8)

        local ped = PlayerPedId()

        TaskLeaveVehicle(ped, createcar, 262144)

        Citizen.Wait(5000)

        local po = "a_m_y_beachvesp_01"
        local pi = GetHashKey(po)

        RequestModel(pi)

        while not HasModelLoaded(pi) do Citizen.Wait(0) end

        local pipo = CreatePed(6, pi, 150.02, 150.01, 50.0, 20.01, true, false)

        SetPedIntoVehicle(pipo, createcar, -1)

        TaskVehicleDriveToCoord(pipo, createcar, -1140.29, -2694.72, 13.95, 50.0,0, GetEntityModel(pi), 411, 10.0)
        
end)

RegisterNetEvent("Tikoz:CarlocUneH")
AddEventHandler("Tikoz:CarlocUneH", function()

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local creaped = CreatePed(6, pi, Config.Pos.Spawn, true, false)

    local car = Config.Name.Car
    local carh = GetHashKey(car)

    RequestModel(carh)

    while not HasModelLoaded(carh) do Citizen.Wait(0) end

    local createcar = CreateVehicle(carh, Config.Pos.Spawn, true, false)

    SetPedIntoVehicle(creaped, createcar, -1)
    
    TaskVehicleDriveToCoord(creaped, createcar, Config.Pos.Menu, 20.0, 0, GetEntityModel(carh), 411, 10.0)

    Citizen.Wait(13000)

    TaskWanderStandard(creaped, 10.0, 10)      
    --- 55 Minutes = 3300000  ---  1seconde = 1000 "milliseconde"
    Citizen.Wait(3300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location prend fin dans ~b~5 minutes", 'CHAR_MOLLY', 8)
    --- Les 5 dernières minutes de la location. 5 minutes = 300000 ---
    Citizen.Wait(300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location est ~b~terminé~s~, un employé vas venir cherche la ~b~blista", 'CHAR_MOLLY', 8)

    local ped = PlayerPedId()

    TaskLeaveVehicle(ped, createcar, 262144)

    Citizen.Wait(5000)

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local pipo = CreatePed(6, pi, 150.02, 150.01, 50.0, 20.01, true, false)

    SetPedIntoVehicle(pipo, createcar, -1)

    TaskVehicleDriveToCoord(pipo, createcar, -1140.29, -2694.72, 13.95, 50.0,0, GetEntityModel(pi), 411, 10.0)
    
end)

RegisterNetEvent("Tikoz:CarlocDeuxH")
AddEventHandler("Tikoz:CarlocDeuxH", function()

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local creaped = CreatePed(6, pi, Config.Pos.Spawn, true, false)

    local car = Config.Name.Car
    local carh = GetHashKey(car)

    RequestModel(carh)

    while not HasModelLoaded(carh) do Citizen.Wait(0) end

    local createcar = CreateVehicle(carh, Config.Pos.Spawn, true, false)

    SetPedIntoVehicle(creaped, createcar, -1)
    
    TaskVehicleDriveToCoord(creaped, createcar, Config.Pos.Menu, 20.0, 0, GetEntityModel(carh), 411, 10.0)

    Citizen.Wait(13000)

    TaskWanderStandard(creaped, 10.0, 10)      
    --- 1h55 = 6900000  ---  1seconde = 1000 "milliseconde"
    Citizen.Wait(6900000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location prend fin dans ~b~5 minutes", 'CHAR_MOLLY', 8)
    --- Les 5 dernières minutes de la location. 5 minutes = 300000 ---
    Citizen.Wait(300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location est ~b~terminé~s~, un employé vas venir cherche la ~b~blista", 'CHAR_MOLLY', 8)

    local ped = PlayerPedId()

    TaskLeaveVehicle(ped, createcar, 262144)

    Citizen.Wait(5000)

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local pipo = CreatePed(6, pi, 150.02, 150.01, 50.0, 20.01, true, false)

    SetPedIntoVehicle(pipo, createcar, -1)

    TaskVehicleDriveToCoord(pipo, createcar, -1140.29, -2694.72, 13.95, 50.0,0, GetEntityModel(pi), 411, 10.0)
    
end)

------------------ SCOOTER ------------------------------------------

RegisterNetEvent("Tikoz:Scootloc")
AddEventHandler("Tikoz:Scootloc", function()

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local creaped = CreatePed(6, pi, Config.Pos.Spawn, true, false)

    local car = Config.Name.Scooter
    local carh = GetHashKey(car)

    RequestModel(carh)

    while not HasModelLoaded(carh) do Citizen.Wait(0) end

    local createcar = CreateVehicle(carh, Config.Pos.Spawn, true, false)

    SetPedIntoVehicle(creaped, createcar, -1)
    
    TaskVehicleDriveToCoord(creaped, createcar, Config.Pos.Menu, 20.0, 0, GetEntityModel(carh), 411, 10.0)

    Citizen.Wait(13000)

    TaskWanderStandard(creaped, 10.0, 10)      
    --- 25 Minutes = 1500000  ---  1seconde = 1000 "milliseconde"
    Citizen.Wait(1500000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location prend fin dans ~b~5 minutes", 'CHAR_MOLLY', 8)
    --- Les 5 dernières minutes de la location. 5 minutes = 300000 ---
    Citizen.Wait(300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location est ~b~terminé~s~, un employé vas venir cherche la ~b~blista", 'CHAR_MOLLY', 8)

    local ped = PlayerPedId()

    TaskLeaveVehicle(ped, createcar, 262144)

    Citizen.Wait(5000)

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local pipo = CreatePed(6, pi, 150.02, 150.01, 50.0, 20.01, true, false)

    SetPedIntoVehicle(pipo, createcar, -1)

    TaskVehicleDriveToCoord(pipo, createcar, -1140.29, -2694.72, 13.95, 50.0,0, GetEntityModel(pi), 411, 10.0)
    
end)

RegisterNetEvent("Tikoz:ScooteurLocaUneH")
AddEventHandler("Tikoz:ScooteurLocaUneH", function()

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local creaped = CreatePed(6, pi, Config.Pos.Spawn, true, false)

    local car = Config.Name.Scooter
    local carh = GetHashKey(car)

    RequestModel(carh)

    while not HasModelLoaded(carh) do Citizen.Wait(0) end

    local createcar = CreateVehicle(carh, Config.Pos.Spawn, true, false)

    SetPedIntoVehicle(creaped, createcar, -1)
    
    TaskVehicleDriveToCoord(creaped, createcar, Config.Pos.Menu, 20.0, 0, GetEntityModel(carh), 411, 10.0)

    Citizen.Wait(13000)

    TaskWanderStandard(creaped, 10.0, 10)      
    --- 55 Minutes = 3300000  ---  1seconde = 1000 "milliseconde"
    Citizen.Wait(3300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location prend fin dans ~b~5 minutes", 'CHAR_MOLLY', 8)
    --- Les 5 dernières minutes de la location. 5 minutes = 300000 ---
    Citizen.Wait(300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location est ~b~terminé~s~, un employé vas venir cherche la ~b~blista", 'CHAR_MOLLY', 8)

    local ped = PlayerPedId()

    TaskLeaveVehicle(ped, createcar, 262144)

    Citizen.Wait(5000)

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local pipo = CreatePed(6, pi, 150.02, 150.01, 50.0, 20.01, true, false)

    SetPedIntoVehicle(pipo, createcar, -1)

    TaskVehicleDriveToCoord(pipo, createcar, -1140.29, -2694.72, 13.95, 50.0,0, GetEntityModel(pi), 411, 10.0)
    
end)


RegisterNetEvent("Tikoz:ScooteurLocaDeuxH")
AddEventHandler("Tikoz:ScooteurLocaDeuxH", function()

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local creaped = CreatePed(6, pi, Config.Pos.Spawn, true, false)

    local car = Config.Name.Scooter
    local carh = GetHashKey(car)

    RequestModel(carh)

    while not HasModelLoaded(carh) do Citizen.Wait(0) end

    local createcar = CreateVehicle(carh, Config.Pos.Spawn, true, false)

    SetPedIntoVehicle(creaped, createcar, -1)
    
    TaskVehicleDriveToCoord(creaped, createcar, Config.Pos.Menu, 20.0, 0, GetEntityModel(carh), 411, 10.0)

    Citizen.Wait(13000)

    TaskWanderStandard(creaped, 10.0, 10)      
    --- 1h55 = 6900000  ---  1seconde = 1000 "milliseconde"
    Citizen.Wait(6900000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location prend fin dans ~b~5 minutes", 'CHAR_MOLLY', 8)
    --- Les 5 dernières minutes de la location. 5 minutes = 300000 ---
    Citizen.Wait(300000)

    ESX.ShowAdvancedNotification('Location', 'Secretaire', "La location est ~b~terminé~s~, un employé vas venir cherche la ~b~blista", 'CHAR_MOLLY', 8)

    local ped = PlayerPedId()

    TaskLeaveVehicle(ped, createcar, 262144)

    Citizen.Wait(5000)

    local po = "a_m_y_beachvesp_01"
    local pi = GetHashKey(po)

    RequestModel(pi)

    while not HasModelLoaded(pi) do Citizen.Wait(0) end

    local pipo = CreatePed(6, pi, 150.02, 150.01, 50.0, 20.01, true, false)

    SetPedIntoVehicle(pipo, createcar, -1)

    TaskVehicleDriveToCoord(pipo, createcar, -1140.29, -2694.72, 13.95, 50.0,0, GetEntityModel(pi), 411, 10.0)
    
end)

