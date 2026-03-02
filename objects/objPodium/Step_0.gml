if(!isQuestCompleted("presentationBegin")){
    visible = false;
} else{
    visible = true;
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

if (instance_exists(objDialogue)) exit;

if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 2) {
    canTalk = true;
    
    if (keyboard_check_pressed(inputKey)) {
        // If controller exists, tell it to start
        if (instance_exists(objPresentationController)) {
            objPresentationController.isReady = true;
        } else {
            // Or create it
            instance_create_depth(0, 0, 0, objPresentationController);
            objPresentationController.isReady = true;
        }
    }
} else {
    canTalk = false;
    talkCooldown = 0;
}