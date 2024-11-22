Config = {}

-- Set locale (change this to 'cz', 'en', 'fr', 'de', 'es')
Config.Locale = 'cz'

-- Select notify system.
Config.NotificationSystem = 'esx'  -- Can be 'esx' or 'okokNotify'

-- Define permission levels (use this in your commands)
Config.PermissionLevels = {'admin', 'superadmin'}  -- Example, you can add more as needed

-- Discord webhook URL for logging actions
Config.DiscordWebhook = 'https://discord.com/api/webhooks/your_webhook_url_here'


-- Define all translations for each language here
Config.Locales = {
    locales = {
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
        fr = {
            ['invalid_id'] = "ID de joueur invalide.",
            ['player_not_found'] = "Joueur introuvable.",
            ['no_permission'] = "Vous n'avez pas la permission d'utiliser cette commande.",
            ['character_deleted'] = "Personnage supprimé et joueur expulsé.",
            ['delete_failed'] = "Échec de la suppression du personnage. Aucune ligne affectée.",
            ['kick_message'] = "Votre personnage a été supprimé. Veuillez vous reconnecter pour en créer un nouveau.",
            ['ck_command'] = "Commande CK",
            ['player_kicked'] = "Joueur expulsé et personnage supprimé.",
            ['log_action'] = "Journal des actions sur Discord",
            ['log_character_deleted'] = "Le joueur {playerName} (ID : {targetId}) a vu son personnage supprimé par {adminName}.",
        },
        de = {
            ['invalid_id'] = "Ungültige Spieler-ID.",
            ['player_not_found'] = "Spieler nicht gefunden.",
            ['no_permission'] = "Du hast keine Berechtigung, diesen Befehl zu benutzen.",
            ['character_deleted'] = "Charakter gelöscht und Spieler gekickt.",
            ['delete_failed'] = "Charakter konnte nicht gelöscht werden. Keine Zeilen betroffen.",
            ['kick_message'] = "Dein Charakter wurde gelöscht. Bitte erneut verbinden, um einen neuen zu erstellen.",
            ['ck_command'] = "CK-Befehl",
            ['player_kicked'] = "Spieler gekickt und Charakter gelöscht.",
            ['log_action'] = "Aktionsprotokoll auf Discord",
            ['log_character_deleted'] = "Spieler {playerName} (ID: {targetId}) wurde von {adminName} gelöscht.",
        },
        es = {
            ['invalid_id'] = "ID de jugador no válida.",
            ['player_not_found'] = "Jugador no encontrado.",
            ['no_permission'] = "No tienes permiso para usar este comando.",
            ['character_deleted'] = "Personaje eliminado y jugador expulsado.",
            ['delete_failed'] = "No se pudo eliminar el personaje. No se afectaron filas.",
            ['kick_message'] = "Tu personaje ha sido eliminado. Reconéctate para crear uno nuevo.",
            ['ck_command'] = "Comando CK",
            ['player_kicked'] = "Jugador expulsado y personaje eliminado.",
            ['log_action'] = "Registro de acciones en Discord",
            ['log_character_deleted'] = "El jugador {playerName} (ID: {targetId}) tuvo su personaje eliminado por {adminName}.",
        },
    }    
    -- You can add more languages here
}
-- dont change this!!
Config.Lang = Config.Locales[Config.Locale]