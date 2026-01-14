// Inherit the parent event
//event_inherited();

// Decrease cooldown
if (talkCooldown > 0) {
    talkCooldown--;
}

// Don't process if dialogue exists
if (instance_exists(objDialogue)) {
    // Set cooldown while dialogue is open
    talkCooldown = 15;
    exit;
}
    
if(hasQuest) {
    questIconFrame += questIconSpeed;
    if(questIconFrame >= sprite_get_number(sprQuest2)) {
        questIconFrame = 0;
    }
}

if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 12)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        // Check quest status and show appropriate dialogue
        if (isQuestCompleted("adamFood")) {
            // Quest complete - casual chat
            createDialogue(global.adamAfterFood, [], 0);
        }
        else if (isQuestActive("adamFood")) {
            // Quest active - check if player has coffee
            if (global.playerHasColdFood) {
                // Player has coffee - complete quest
                global.playerHasColdFood = false; // Take the coffee
                completeQuest("adamFood");
                hasQuest = false;
                createDialogue(global.adamReceiveFood, [], batteryCost);
            } else {
                // Still waiting for coffee
                hasQuest = true;
                createDialogue(global.adamWaitingForFood, [], batteryCost);
            }
        }
        else {
            // Quest not started - give quest
            startQuest("adamFood");
            hasQuest = true;
            createDialogue(global.adamCafeTalk, [], batteryCost);
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0; // Reset cooldown when you walk away
}

