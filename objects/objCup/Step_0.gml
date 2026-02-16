if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 7){
    if(keyboard_check_pressed(vk_space)){
        if(isQuestActive("ameliaDrink")){
            global.playerHasDrink = true;
            visible = false;
            show_debug_message("Player has the drink");
        }
    }
}