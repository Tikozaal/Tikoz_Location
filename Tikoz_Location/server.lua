ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('Tikoz:LocVoitureTrenteM')
AddEventHandler('Tikoz:LocVoitureTrenteM', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 75
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then
        TriggerClientEvent('Tikoz:Carloc', source)
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Votre ~b~voiture~w~ arrive, vous avez payé ~g~"..price.."$~w~ pour ~b~30 minutes")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
  
end)

RegisterNetEvent('Tikoz:LocVoitureUneH')
AddEventHandler('Tikoz:LocVoitureUneH', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then
        TriggerClientEvent('Tikoz:CarlocUneH', source)
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Votre ~b~voiture~w~ arrive, vous avez payé ~g~"..price.."$~w~ pour ~b~1 heure")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
  
end)

RegisterNetEvent('Tikoz:LocVoitureDeuxH')
AddEventHandler('Tikoz:LocVoitureDeuxH', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then
        TriggerClientEvent('Tikoz:CarlocDeuxH', source)
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Votre ~b~voiture~w~ arrive, vous avez payé ~g~"..price.."$~w~ pour ~b~2 heures")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
  
end)

RegisterNetEvent('Tikoz:LocScoot')
AddEventHandler('Tikoz:LocScoot', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 45
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then
        TriggerClientEvent('Tikoz:Scootloc', source)
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Votre ~b~scooter~w~ arrive, vous avez payé ~g~"..price.."$~w~ pour ~b~30 minutes")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:LocScootUneH')
AddEventHandler('Tikoz:LocScootUneH', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then
        TriggerClientEvent('Tikoz:ScooteurLocaUneH', source)
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Votre ~b~scooter~w~ arrive, vous avez payé ~g~"..price.."$~w~ pour ~b~1 heure")
    else
        TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:LocScootDeuxH')
AddEventHandler('Tikoz:LocScootDeuxH', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 130
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then
        TriggerClientEvent('Tikoz:ScooteurLocaDeuxH', source)
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Votre ~b~scooter~w~ arrive, vous avez payé ~g~"..price.."$~w~ pour ~b~2 heures")
    else
        TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

