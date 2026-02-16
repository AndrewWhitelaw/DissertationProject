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
        if (isQuestCompleted("frankLevel2")){
            createDialogue(global.frankAfterLevel2Complete, [], 0)
        }
        else if(isQuestCompleted("alexHost") && isQuestCompleted("ameliaDrink") && isQuestCompleted("bobCompliment")){
            createDialogue(global.frankLevel2Complete, [], 0)
            completeQuest("frankLevel2")
            hasQuest = false;
        }else if(isQuestActive("frankLevel2")){
            createDialogue(global.frankAfterLevel2Start, [], 0)
        }
        else {
            createDialogue(global.frankLevel2Start, [], 0)
            startQuest("frankLevel2")
        }
    }
}
else{
    canTalk = false;
    talkCooldown = 0; //Reset cooldown when you walk away
}