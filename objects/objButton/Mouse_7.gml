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
    
}