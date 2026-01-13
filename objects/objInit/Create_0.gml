//Check if already initialized
if (variable_global_exists("systemInitialized")) {
    instance_destroy();
    exit;
}

//Mark as initialized
global.systemInitialized = true;

// Initialize quest system
global.quests = {
    alexCoffee: false,
    adamFood: false
}

global.questComplete = {
    alexCoffee: false,
    adamFood: false
}

global.playerHasCoffee = false;
global.playerHasColdFood = false;

//Initialize all global dialogues colours
   global.charColours = {
       "Alex": c_red,
       "Bob": c_purple,
       "Adam": c_aqua,
       "Frank": c_orange
   }
   
   //All dialogue definitions
   global.welcomeDialog = [
       {name: "Alex", msg: "This Cafe here is great!"},
       {name: "Frank", msg: "Good to know, guess I will check it out."}
   ]
   
   global.adamCafeTalk = [
       {name: "Adam", msg: "Not seen you around here before."},
       {name: "Adam", msg: "I have a small issue, my food here has came cold"},
       {name: "Adam", msg: "Can you take this up to bob for me please?."},
   ]

   global.adamWaitingForFood = [
       {name: "Adam", msg: "Have you told Bob about my food yet?"}, 
   ]

   global.adamReceiveFood = [
       {name: "Adam", msg: "Wonderful! This is nice and hot, thank you!"},
   ]   

   global.adamAfterFood = [
       {name: "Adam", msg: "This is delicious"},
   ]  
   
   global.bobWorkTalk = [
       {name: "Bob", msg: "Welcome to our cafe, what will you be having today?"}
   ]
   
   global.alexCafeQuest = [
       {name: "Alex", msg: "Hey! I'm really craving a coffee but I'm too tired to get up."},
       {name: "Alex", msg: "Could you grab me one from Bob at the counter?"}
   ]
   
   global.alexWaitingForCoffee = [
       {name: "Alex", msg: "Did you get my coffee yet? Bob should have it ready."}
   ]
   
   global.alexReceiveCoffee = [
       {name: "Alex", msg: "Perfect! Thanks so much for getting that for me!"},
       {name: "Alex", msg: "You're a lifesaver!"}
   ]
   
   global.alexAfterQuest = [
       {name: "Alex", msg: "This coffee hits the spot! Thanks again."}
   ]
   
   global.bobCoffeeOrder = [
       {name: "Bob", msg: "One coffee coming right up!"},
       {name: "Bob", msg: "Here you go - fresh and hot!"}
   ]
   
   global.bobTeaOrder = [
       {name: "Bob", msg: "Great choice! Here's your tea."}
   ]
   
   global.bobNothingOrder = [
       {name: "Bob", msg: "No problem, let me know if you need anything!"}
   ]

   global.bobColdFood = [
       {name: "Bob", msg: "I'm very sorry about that, here is a new plate of food"}
   ]
   
   //Destroy after initialization
   instance_destroy();