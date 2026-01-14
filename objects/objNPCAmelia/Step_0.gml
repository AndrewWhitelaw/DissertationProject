// Inherit the parent event
//event_inherited();

//Decrease cooldown
if (talkCooldown > 0) {
    talkCooldown--;
}

//Don't process if dialogue exists
if (instance_exists(objDialogue)) {
    //Set cooldown while dialogue is open
    talkCooldown = 15;
    exit;
}
    
if(hasQuest) {
    questIconFrame += questIconSpeed;
    if(questIconFrame >= sprite_get_number(questSprite)) {
        questIconFrame = 0;
    }
}

if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 12)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        if(isQuestCompleted("ameliaWifi")){
            createDialogue(global.ameliaAfterWifi, [], 0);
            hasQuest = false;
        }
         else if(isQuestActive("ameliaWifi") && global.playerHasWifi){
         createDialogue(
             global.ameliaWaitingForWifi, 
             [
                 { 
                     text: "cafe123", 
                     dialogue: global.ameliaReceiveWifi, 
                     action: function() {
                        completeQuest("ameliaWifi");
                        global.playerHasWifi = false;
                     }
                 },
                 { 
                     text: "password123", 
                     dialogue: global.ameliaWrongPassword, 
                     action: function() {
                        global.playerHasWifi = false;
                        show_debug_message("Player got the password wrong, try again");
                     }
                 },
                 { 
                     text: "coffee123", 
                     dialogue: global.ameliaWrongPassword, 
                     action: function() {
                        global.playerHasWifi = false;
                        show_debug_message("Player got the password wrong, try again");
                     }
                 }
             ],
             batteryCost
           ); 
        } else {
            startQuest("ameliaWifi")
            hasQuest = true;
            createDialogue(global.ameliaAskForWifi, [], batteryCost);
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0; //Reset cooldown when you walk away
}

