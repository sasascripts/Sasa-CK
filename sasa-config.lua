Config = {}

-- Set locale (change this to 'cz', 'en', etc.)
Config.Locale = 'cz'

-- Define all translations for each language here
Config.Locales = {
    en = {
        ['invalid_id'] = 'Invalid player ID.',
        ['player_not_found'] = 'Player not found.',
        ['no_permission'] = 'You do not have permission to use this command.',
        ['character_deleted'] = 'Character deleted and player kicked.',
        ['delete_failed'] = 'Failed to delete character. No rows affected.',
        ['kick_message'] = 'Your character has been deleted. Please reconnect to create a new one.',
        ['ck_command'] = 'CK Command',
        ['player_kicked'] = 'Player kicked and character deleted.',
        ['log_action'] = 'Action log on Discord',
        ['log_character_deleted'] = 'Player {playerName} (ID: {targetId}) had their character deleted by {adminName}.',
    },
    cz = {
        ['invalid_id'] = 'Neplatné ID hráče.',
        ['player_not_found'] = 'Hráč nenalezen.',
        ['no_permission'] = 'Nemáš oprávnění použít tento příkaz.',
        ['character_deleted'] = 'Postava byla smazána a hráč vykopnut.',
        ['delete_failed'] = 'Nepodařilo se smazat postavu. Nezměněny žádné řádky.',
        ['kick_message'] = 'Tvoje postava byla smazána. Pro vytvoření nové se znovu připoj.',
        ['ck_command'] = 'CK Příkaz',
        ['player_kicked'] = 'Hráč byl vykopnut a jeho postava smazána.',
        ['log_action'] = 'Záznam akce na Discordu',
        ['log_character_deleted'] = 'Hráč {playerName} (ID: {targetId}) měl svou postavu smazanou hráčem {adminName}.',
    },
    -- You can add more languages here
}
-- dont change this!!
Config.Lang = Config.Locales[Config.Locale]

Config.NotificationSystem = 'esx'  -- Can be 'esx' or 'okokNotify'

-- Define permission levels (use this in your commands)
Config.PermissionLevels = {'admin', 'superadmin'}  -- Example, you can add more as needed

-- Discord webhook URL for logging actions
Config.DiscordWebhook = 'https://discord.com/api/webhooks/your_webhook_url_here'
