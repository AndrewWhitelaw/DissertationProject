if(currentMessage < 0) exit;

//Check if we're showing choices FIRST (before accessing messages)
if(showingChoices) {
    //Navigate choices with up/down
    if(keyboard_check_pressed(vk_down)) {
        selectedChoice++;
        if(selectedChoice >= array_length(choices)) selectedChoice = 0;
    }
    if(keyboard_check_pressed(vk_up)) {
        selectedChoice--;
        if(selectedChoice < 0) selectedChoice = array_length(choices) - 1;
    }
    
    //Select choice with space
    if(keyboard_check_pressed(inputKey)) {
		
		if(array_length(choices) == 0 || selectedChoice >= array_length(choices)) {
        exit; //No valid choices, exit
    }
    
    var selectedOption = choices[selectedChoice];
    
    //Check if the choice has all required properties
    if(!variable_struct_exists(selectedOption, "dialogue")) {
        exit; //Invalid choice structure
    }
		
    var chosenDialogue = selectedOption.dialogue;
    var chosenCost = variable_struct_exists(selectedOption, "cost") ? selectedOption.cost : 0;
    var chosenAction = variable_struct_exists(selectedOption, "action") ? selectedOption.action : undefined;
    
        
        //Deduct additional battery cost if any
        if(chosenCost > 0 && instance_exists(objPlayer)) {
            objPlayer.socialBattery -= chosenCost;
        }
        
        //Execute the action if it exists
        if (chosenAction != undefined) {
            chosenAction();
        }
        
        //Create new dialogue based on choice
        if(array_length(chosenDialogue) > 0) {
            messages = chosenDialogue;
            currentMessage = 0;
            currentChar = 0;
            drawMessage = "";
            showingChoices = false;
            hasChoices = false;
			choices = [];
        } else {
            if(instance_exists(objPlayer)) {
                objPlayer.talkingToNPC = false;
            }
            instance_destroy();
        }
    }
    exit; //Exit here
}

//Normal dialogue code
var str = messages[currentMessage].msg;
if(currentChar < string_length(str))
{
    currentChar += charSpeed * (1 + real(keyboard_check(inputKey)));
    drawMessage = string_copy(str, 0, currentChar); 
}
else if (keyboard_check_pressed(inputKey)){
    currentMessage++;
    if (currentMessage >= array_length(messages)){
        //Check if we should show choices
        if(hasChoices && array_length(choices) > 0) {
            showingChoices = true;
            selectedChoice = 0;
            exit;
        } else {
            if(instance_exists(objPlayer)) {
                objPlayer.talkingToNPC = false;
            }
            instance_destroy();
        }
    }
    else{
        currentChar = 0;
        drawMessage = "";
    }
}