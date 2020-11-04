
// -/durum yazarak karakterinizin anlık bilgilerini öğrenebilirsiniz.-
RegisterCommand("durum",function() 
    TriggerEvent("baymike:durum")
end)
RegisterNetEvent("baymike:durum")
AddEventHandler("baymike:durum",function()
    
    exports['mythic_notify']:SendAlert('inform', 'Can: %'..GetEntityHealth(PlayerPedId())/2)  
    exports['mythic_notify']:SendAlert('inform', 'Zırh: %'..GetPedArmour(PlayerPedId())) 
    exports['mythic_notify']:SendAlert('inform', 'Yorgunluk: %'..math.floor(GetPlayerSprintStaminaRemaining(PlayerId()))) 

    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        exports['mythic_notify']:SendAlert('inform', 'Açlık: %' ..math.floor((status.val/-10000)+100) )
    end)

    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        exports['mythic_notify']:SendAlert('inform', 'Susuzluk: %' ..math.floor((status.val/-10000)+100) ) 
    end) 
end)
