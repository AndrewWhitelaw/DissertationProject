//Check if already initialized
if (variable_global_exists("systemInitialized")) {
    instance_destroy();
    exit;
}

//Mark as initialized
global.systemInitialized = true;

// Initialize quest system
global.quests = {
   
}

global.questComplete = {
  
}

//Initialize all global dialogues colours
   global.charColours = {
       "Frank": c_olive,
}

global.frankIntro3 = [
     {name: "Frank", msg: "Welcome to the third and final level! I will be your teacher today."},
]

//Destroy after initialization
instance_destroy();