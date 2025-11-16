function createDialogue(messages){
    if(instance_exists(objDialogue)) return;
        
    var inst = instance_create_depth(0, 0, 0, objDialogue);
    inst.messages = messages;
    inst.currentMessage = 0;
}