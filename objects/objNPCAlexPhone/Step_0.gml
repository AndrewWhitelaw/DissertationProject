// Decrease cooldown
if (talkCooldown > 0) {
    talkCooldown--;
}

// Don't process if dialogue exists
if (instance_exists(objDialogue)) {
    talkCooldown = 15;
    exit;
}
//Cycle through sprQuest animation
if(hasQuest) {
    questIconFrame += questIconSpeed;
    if(questIconFrame >= sprite_get_number(sprQuest)) {
        questIconFrame = 0;
    }
}

if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 8)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        // Check quest status and show appropriate dialogue
        if (isQuestCompleted("alexCoffee")) {
            // Quest complete - casual chat
            createDialogue(global.alexAfterQuest, [], 0);
        }
        else if (isQuestActive("alexCoffee")) {
            // Quest active - check if player has coffee
            if (global.playerHasCoffee) {
                // Player has coffee - complete quest
                global.playerHasCoffee = false; // Take the coffee
                completeQuest("alexCoffee");
                hasQuest = false;
                createDialogue(global.alexReceiveCoffee, [], batteryCost);
            } else {
                // Still waiting for coffee
                hasQuest = true;
                createDialogue(global.alexWaitingForCoffee, [], batteryCost);
            }
        }
        else {
            // Quest not started - give quest
            startQuest("alexCoffee");
            hasQuest = true;
            createDialogue(global.alexCafeQuest, [], batteryCost);
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0;
}