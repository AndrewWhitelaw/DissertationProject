// Decrease cooldown
if (talkCooldown > 0) {
    talkCooldown--;
}

// Don't process if dialogue exists
if (instance_exists(objDialogue)) {
    talkCooldown = 15;
    exit;
}
    
if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 15)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        // Create dialogue with choices
        createDialogue(
            global.bobWorkTalk, 
            [
                { 
                    text: "Coffee, please", 
                    dialogue: global.bobCoffeeOrder, 
                    action: function() {
                        // Give player coffee if Alex's quest is active
                        if (isQuestActive("alexCoffee")) {
                            global.playerHasCoffee = true;
                            show_debug_message("Player received coffee for Alex");
                        }
                    }
                },
                { 
                    text: "I'd like some tea", 
                    dialogue: global.bobTeaOrder, 
                    action: function() {
                        // Tea doesn't help with quest
                    }
                },
                { 
                    text: "Nothing, thanks", 
                    dialogue: global.bobNothingOrder, 
                    action: function() {
                        // Nothing happens
                    }
                }
            ],
            30
        );
    }
}
else{
    canTalk = false;
    talkCooldown = 0;
}