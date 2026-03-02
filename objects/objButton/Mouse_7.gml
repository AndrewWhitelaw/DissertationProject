switch(buttonID){
    case 0: // Resume
        objMenuPause.paused = false;
        objMenuPause.update_pause();
    break;  

    case 1: // Settings
        layer_set_visible("PauseLayer", false);
        layer_set_visible("SettingsLayer", true);
    break;

    case 2: // Quit  
        game_end();
    break;  

    case 3: // Back from Settings
        layer_set_visible("PauseLayer", true);
        layer_set_visible("SettingsLayer", false);
    break;  

    case 4: //Starting the game
        layer_set_visible("TitleScreen", false);
        room_goto(rmTutorial); 
    break;

    case 5: // To the settings from title screen
        layer_set_visible("TitleScreen", false);
        layer_set_visible("SettingsLayerTitle", true);
    break; 

    case 6: // Back from Settings from title screen
        layer_set_visible("TitleScreen", true);
        layer_set_visible("SettingsLayerTitle", false);
    break;   
    
}