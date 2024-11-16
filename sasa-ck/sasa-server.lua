ESX = exports["es_extended"]:getSharedObject()

-- Notify helper function
local function Notify(source, message, messageType)
    if Config.NotificationSystem == 'okokNotify' then
        TriggerClientEvent('okokNotify:Alert', source, Config.Lang['ck_command'], message, 5000, messageType or 'info')
    else
        TriggerClientEvent('esx:showNotification', source, message)
    end
end

-- Custom function to kick players
local function CustomKick(targetId, reason)
    local xPlayer = ESX.GetPlayerFromId(targetId)
    if xPlayer then
        DropPlayer(targetId, reason)
    end
end

-- Function to log actions to Discord
local function LogToDiscord(message)
    local embed = {
        {
            ["color"] = 15258703, -- Light orange color
            ["title"] = Config.Lang['log_action'],
            ["description"] = message,
            ["footer"] = {
                ["text"] = "Action logged by server"
            },
        }
    }

    PerformHttpRequest(Config.DiscordWebhook, function(err, text, headers)
        if err ~= 200 then
            print("Error while logging to Discord: " .. err)
        end
    end, 'POST', json.encode({username = "Server Log", embeds = embed}), { ['Content-Type'] = 'application/json' })
end

-- Command: /ck
RegisterCommand("ck", function(source, args, rawCommand)
    local targetId = tonumber(args[1])
    if not targetId then
        Notify(source, Config.Lang['invalid_id'], 'error')
        return
    end

    local xTargetPlayer = ESX.GetPlayerFromId(targetId)
    if not xTargetPlayer then
        Notify(source, Config.Lang['player_not_found'], 'error')
        return
    end

    local xSourcePlayer = ESX.GetPlayerFromId(source)
    if not xSourcePlayer or not xSourcePlayer.getGroup() or not table.find(Config.PermissionLevels, xSourcePlayer.getGroup()) then
        Notify(source, Config.Lang['no_permission'], 'error')
        return
    end

    -- Kick the player and delete character
    CustomKick(targetId, Config.Lang['kick_message'])
    local identifier = xTargetPlayer.identifier

    exports.oxmysql:execute('DELETE FROM users WHERE identifier = ?', {identifier}, function(affectedRows)
        if affectedRows > 0 then
            Notify(source, Config.Lang['character_deleted'], 'success')
            -- Log the action to Discord
            local logMessage = Config.Lang['log_character_deleted']:gsub("{playerName}", xTargetPlayer.getName()):gsub("{targetId}", targetId):gsub("{adminName}", xSourcePlayer.getName())
            LogToDiscord(logMessage)
        else
            Notify(source, Config.Lang['delete_failed'], 'error')
        end
    end)
end, false)

-- Helper to find if value exists in a table
function table.find(tbl, value)
    for _, v in ipairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

-- Chat suggestion for CK command
AddEventHandler('chat:addSuggestion', function()
    TriggerClientEvent('chat:addSuggestion', -1, '/ck <playerId>', Config.Lang['ck_command'], {
        { name = 'playerId', help = 'ID of the player to be kicked and have their character deleted' }
    })
end)
