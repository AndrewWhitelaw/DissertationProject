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
        if(isQuestCompleted("alexHost")){
            createDialogue(global.alexAfterInto, [], 0);
            hasQuest = false;
        } else if(isQuestActive("alexHost")){
            createDialogue(
                global.alexChoices,
                [
                    {
                        text: "Hey... I'm Frank. Nice to meet you all.",
                        dialogue: global.playerIntoShy,
                        cost: 12,
                        action: function() {
                            completeQuest("alexHost");
                            global.playerIntroduction = true;
                        }
                    },
                    {
                        text: "Hi guys! Super excited to be here!",
                        dialogue: global.playerIntoConfident,
                        cost: 15,
                        action: function() {
                            completeQuest("alexHost");
                            global.playerIntroduction = true;
                        }
                    },
                    {
                        text: "Sorry, I need the bathroom...",
                        dialogue: global.playerIntroAvoid,
                        cost: 5,
                        action: function() {
                            global.playerIntroduction = false;
                        }
                    },
                ],
                0
            );
        }
        
     else {
            startQuest("alexHost")
            hasQuest = true;
            createDialogue(global.alexIntro, [], 0);
        }
    } 
}
else{
    canTalk = false;
    talkCooldown = 0; //Reset cooldown when you walk away
}