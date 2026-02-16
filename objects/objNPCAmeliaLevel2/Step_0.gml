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
        if (isQuestCompleted("ameliaDrink")) {
            createDialogue(global.ameliaGetsDrink, [], 0);
        }
        else if (isQuestActive("ameliaDrink")) {
            if (global.playerHasDrink) {
                global.playerHasDrink = false; 
                completeQuest("ameliaDrink");
                hasQuest = false;
                createDialogue(global.ameliaGetsDrink, [], 15);
            } else {
                hasQuest = true;
                createDialogue(global.ameliaWaitingForDrink, [], 0);
            }
        }
        else {
            startQuest("ameliaDrink");
            hasQuest = true;
            createDialogue(global.ameliAskForDrink, [], 0);
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0; //Reset cooldown when you walk away
}