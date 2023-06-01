RegisterCommand("report", function(src, args)
    local player = ESX.GetPlayerFromId(src)
    for _, xPlayer in pairs(ESX.GetExtendedPlayers()) do
        if (xPlayer.job.name == "staff" or xPlayer.source == src) then
            TriggerClientEvent('chatMessage', xPlayer.source, "^1[REPORT]", {255,0,0}, "("..player.get("firstName").." | "..src..") " .. table.concat(args, " "))
        end
    end
end, false)

-- TriggerClientEvent('chatMessage', -1, name, color, message)