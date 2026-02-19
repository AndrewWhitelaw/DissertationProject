if (keyboard_check_pressed(vk_space)) {
    // Reset player state
    if (instance_exists(objPlayer)) {
        objPlayer.socialBattery = objPlayer.maxSocialBattery;
        objPlayer.gameOverTriggered = false;
        objPlayer.visible = true;
    }
    
    room_goto(global.previousRoom);
}