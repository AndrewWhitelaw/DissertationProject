function createDialogue(messages, choices, batteryCost = 15){
    if(instance_exists(objDialogue)) return;
        
    var inst = instance_create_depth(0, 0, 0, objDialogue);
    inst.messages = messages;
    inst.currentMessage = 0;
    inst.choices = choices; 
    inst.hasChoices = (array_length(choices) > 0);
    
    if(instance_exists(objPlayer)) {
        objPlayer.socialBattery -= batteryCost;
    }
}