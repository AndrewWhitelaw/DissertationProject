messages = []; 
currentMessage = -1; //Dialogue hasn't started 
currentChar = 0; //How many characters of string have been drawn 
drawMessage = ""; //Message drawn on screen 

charSpeed = 0.5; //How fast characters appear 
inputKey = vk_space; //Speed up text/move to next message 

guiWidth = display_get_gui_width(); 
guiHeight = display_get_gui_height();