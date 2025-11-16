if(currentMessage < 0) exit;
    
var str = messages[currentMessage].msg;

if(currentChar < string_length(str))
{
    currentChar += charSpeed * (1 + real(keyboard_check(inputKey)));
    drawMessage = string_copy(str, 0, currentChar); 
}
else if (keyboard_check_pressed(inputKey)){
    currentMessage++;
    if (currentMessage >= array_length(messages)){
        instance_destroy();
    }
    else{
        currentChar = 0;
    }
}
