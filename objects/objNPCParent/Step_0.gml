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
    
if (instance_exists(objPlayer) && distance_to_object(objPlayer) < 8)
{
    canTalk = true;
    if(keyboard_check_pressed(inputKey) && talkCooldown <= 0){
        createDialogue(dialog, batteryCost);
    }
}
else{
    canTalk = false;
    talkCooldown = 0; // Reset cooldown when you walk away
}