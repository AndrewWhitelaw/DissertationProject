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
       "Frank": c_olive
}


//Destroy after initialization
instance_destroy();