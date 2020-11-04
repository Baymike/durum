RegisterCommand("durum",function(source)
    local player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('mythic_notify:client:SendAlert', player.source, { type = 'inform', text = "Nakit: $" ..player.getMoney() })
    TriggerClientEvent('mythic_notify:client:SendAlert', player.source, { type = 'inform', text = "Banka: $" ..player.getAccount("bank").money})
    TriggerClientEvent("psytion:durum",player.source)
    local job = player.job.label
    local jobgrade = player.job.grade_label
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Meslek: ' .. job .. ' - ' .. jobgrade})
end)