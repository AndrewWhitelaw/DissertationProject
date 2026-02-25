if (room == rmGameOver){ 
    if (keyboard_check_pressed(vk_space)) {
       if (instance_exists(objPlayer)) {
           objPlayer.socialBattery = objPlayer.maxSocialBattery;
           objPlayer.gameOverTriggered = false;
           objPlayer.visible = true;
       }
       
       room_goto(global.previousRoom);
   }
}
else if (room == rmVictory){
    if (keyboard_check_pressed(vk_space)) {
       if (instance_exists(objPlayer)) {
           objPlayer.socialBattery = objPlayer.maxSocialBattery;
           objPlayer.gameVictoryTriggered = false;
           objPlayer.visible = true;
       }
       
       game_end();
   }
}