// Inherit the parent event
//event_inherited();

if(isQuestCompleted("alexCoffee") && isQuestCompleted("adamFood") && isQuestCompleted("ameliaWifi")){
    visible = true;
}else{
    visible = false;
}


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
        
        if(isQuestCompleted("frankCongrats")){
            createDialogue(global.frankAfterLevel1Complete, [], 0);
        }
        else{
            createDialogue(global.frankLevel1Complete, [], 0);
            completeQuest("frankCongrats");
            hasQuest = false;
       }    
        
        
    }
}
else{
    canTalk = false;
    talkCooldown = 0; //Reset cooldown when you walk away
}