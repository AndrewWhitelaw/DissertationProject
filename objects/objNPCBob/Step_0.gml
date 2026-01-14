//Decrease cooldown
if (talkCooldown > 0) {
    talkCooldown--;
}

//Don't process if dialogue exists
if (instance_exists(objDialogue)) {
    talkCooldown = 15;
    exit;
}
    
if(isQuestActive("alexCoffee") || isQuestActive("adamFood") || isQuestActive("ameliaWifi")) {
    hasQuest = true;
    questIconFrame += questIconSpeed;
    if(questIconFrame >= sprite_get_number(sprQuest) && questIconFrame >= sprite_get_number(sprQuest2)) {
        questIconFrame = 0;
    }
}

if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 15)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        //Checking Adam first as it is just a statement
        if (isQuestActive("adamFood")) {
            createDialogue(global.bobColdFood, [], batteryCost);
            global.playerHasColdFood = true;
            show_debug_message("Player received new food for Adam");
        }
        
        //Create dialogue with choices
        else if (isQuestActive("alexCoffee")){
        createDialogue(
            global.bobWorkTalk, 
            [
                { 
                    text: "Coffee, please", 
                    dialogue: global.bobCoffeeOrder, 
                    action: function() {
                        //Give player coffee if Alex's quest is active
                            global.playerHasCoffee = true;
                            show_debug_message("Player received coffee for Alex");
                    }
                },
                { 
                    text: "I'd like some tea", 
                    dialogue: global.bobTeaOrder, 
                    action: function() {
                        //Tea doesn't help with quest
                    }
                },
                { 
                    text: "Nothing, thanks", 
                    dialogue: global.bobNothingOrder, 
                    action: function() {
                        //Nothing happens
                    }
                },
            ],
            batteryCost
        ); 
        } else if (isQuestActive("ameliaWifi")){
        createDialogue(
            global.bobWorkTalk, 
            [
                { 
                    text: "Can I have the wifi password please?", 
                    dialogue: global.bobWifiPassword, 
                    action: function() {
                        //Give player the Wifi password if Amelia's quest is active
                            global.playerHasWifi = true;
                            show_debug_message("Player received the wifi for Amelia");
                    }
                },
                { 
                    text: "I'd like some tea", 
                    dialogue: global.bobTeaOrder, 
                    action: function() {
                        //Tea doesn't help with quest
                    }
                },
                { 
                    text: "Nothing, thanks", 
                    dialogue: global.bobNothingOrder, 
                    action: function() {
                        //Nothing happens
                    }
                },
            ],
            batteryCost
        ); 
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0;
}