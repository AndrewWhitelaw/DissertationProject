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
        if(isQuestCompleted("bobCompliment")){
            createDialogue(global.bobGeneral, [], 0);
            hasQuest = false;
        }
         else if(isQuestActive("bobCompliment")){
         createDialogue(
             global.bobChoices, 
             [
                 { 
                     text: "It's nothing special...", 
                     dialogue: global.bobDeflected, 
                     cost: 8,
                     action: function() {
                        //Nothing happens, bad answer
                     }
                 },
                 { 
                     text: "Oh...Thanks I guess", 
                     dialogue: global.bobAwkwardBack, 
                     cost: 12,
                     action: function() {
                        completeQuest("bobCompliment")
                     }
                 },
                 { 
                     text: "Thanks! I like your jacket aswell", 
                     dialogue: global.bobComplimentBack, 
                     cost: 15,
                     action: function() {
                        completeQuest("bobCompliment")
                     }
                 }
             ],
             0
           ); 
        } else {
            startQuest("bobCompliment")
            hasQuest = true;
            createDialogue(global.bobStartTalk, [], 0);
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0; //Reset cooldown when you walk away
}