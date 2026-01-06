// Decrease cooldown
if (talkCooldown > 0) {
    talkCooldown--;
}

// Don't process if dialogue exists
if (instance_exists(objDialogue)) {
    talkCooldown = 15;
    exit;
}
    
if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 8)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        // Check quest status and show appropriate dialogue
        if (isQuestCompleted("alexCoffee")) {
            // Quest complete - casual chat
            createDialogue(global.alexAfterQuest, [], batteryCost);
        }
        else if (isQuestActive("alexCoffee")) {
            // Quest active - check if player has coffee
            if (global.playerHasCoffee) {
                // Player has coffee - complete quest
                global.playerHasCoffee = false; // Take the coffee
                completeQuest("alexCoffee");
                createDialogue(global.alexReceiveCoffee, [], batteryCost);
            } else {
                // Still waiting for coffee
                createDialogue(global.alexWaitingForCoffee, [], batteryCost);
            }
        }
        else {
            // Quest not started - give quest
            startQuest("alexCoffee");
            createDialogue(global.alexCafeQuest, [], batteryCost);
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0;
}