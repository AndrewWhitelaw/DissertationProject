// Check if already initialized
if (variable_global_exists("systemInitialized")) {
    instance_destroy();
    exit;
}

// Mark as initialized
global.systemInitialized = true;

// Initialize quest system
global.quests = {
    alexCoffee: false
}

global.questComplete = {
    alexCoffee: false
}

global.playerHasCoffee = false;

// Initialize all global dialogues
   global.charColours = {
       "Alex": c_red,
       "Bob": c_purple,
       "Adam": c_aqua,
       "Frank": c_orange
   }
   
   // Initialize quest system
   global.quests = {
       alexCoffee: false
   }
   
   global.questComplete = {
       alexCoffee: false
   }
   
   global.playerHasCoffee = false;
   
   // All your dialogue definitions
   global.welcomeDialog = [
       {name: "Alex", msg: "This Cafe here is great!"},
       {name: "Frank", msg: "Good to know, guess I will check it out."}
   ]
   
   global.adamCafeTalk = [
       {name: "Adam", msg: "Not seen you around here before."},
       {name: "Adam", msg: "I love coming here for the coffee!"}
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
   
   // Destroy after initialization
   instance_destroy();