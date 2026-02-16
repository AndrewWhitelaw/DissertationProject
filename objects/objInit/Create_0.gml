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
    adamFood: false,
    ameliaWifi: false,
    frankTutorial: false,
    frankCongrats: false
}

global.questComplete = {
    alexCoffee: false,
    adamFood: false,
    ameliaWifi: false,
    frankTutorial: false,
    frankCongrats: false
}

global.playerHasCoffee = false;
global.playerHasColdFood = false;
global.playerHasWifi = false;

//Initialize all global dialogues colours
   global.charColours = {
       "Alex": c_red,
       "Bob": c_purple,
       "Adam": c_aqua,
       "Amelia": c_orange,
       "Frank": c_olive
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
       {name: "Alex", msg: "This coffee hits the spot! Thanks again."},
       {name: "Alex", msg: "I'm having a house party later on tonight, you should come along it will be fun!"}
   ]

   global.bobWorkTalk = [
       {name: "Bob", msg: "Welcome to our cafe, what will you be having today?"}
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

   global.bobWifiPassword = [
       {name: "Bob", msg:"The Wifi password? No problem, its cafe123" }    
   ]

   global.ameliaAskForWifi = [
       {name: "Amelia", msg:"Hi, sorry to bother you, do you know the wifi password?" },
       {name: "Amelia", msg:"You don't? Could you ask Bob for me please? I am a bit nervous"} 
   ]

   global.ameliaWaitingForWifi = [
       {name: "Amelia", msg:"Have you got the password yet? Its ok if you haven't you can take your time"}
   ]

   global.ameliaReceiveWifi = [
       {name: "Amelia", msg:"Thank you so much! I struggle to ask staff members questions sometimes"}   
   ]
   
   global.ameliaAfterWifi = [
       {name: "Amelia", msg:"Thank you again!"}
   ]

   global.ameliaWrongPassword = [
       {name: "Amelia", msg:"Oh, it says the password is incorrect, did you get the right one?"}    
   ]

   global.frankStartTutorial = [
       {name: "Frank", msg:"Welcome! My name is Frank, I have Social Anxiety."},
       {name: "Frank", msg:"You will help me talk to people and have different interactions with everyone."},
       {name: "Frank", msg:"Make sure to talk to everyone that has a '!' above their head!"},   
       {name: "Frank", msg:"When you spoke to me did you notice your blue meter went down?"},
       {name: "Frank", msg:"That is your 'Social Battery' when speaking to people that will gradually decrease depending on the situation"},  
       {name: "Frank", msg:"By holding down 'E' you can recharge your battery using your headphones! This is known as music therapy."},  
       {name: "Frank", msg:"Watch out however, your headphone battery will run out and you will no longer be able to use them"},
       {name: "Frank", msg:"If you run out of social battery its game over. Run through the exit behind me to begin the game!"},
   ]
  
   global.frankAfterTutorial = [
       {name: "Frank", msg:"Good Luck!"}    
   ]

   global.frankLevel1Complete = [
       {name: "Frank", msg:"Congratulations! You just completed three different types of social interactions that people with social anxiety often struggle with."},
       {name: "Frank", msg:"Alex needed help - a simple favor. For many with social anxiety, offering help means putting yourself out there and risking judgment, so they stay invisible instead."},
       {name: "Frank", msg:"Adam required confrontation. Speaking up about a problem feels like 'making a scene.' People with social anxiety often suffer in silence to avoid standing out."}, 
       {name: "Frank", msg:"Amelia tested your memory and communication with authority. Asking staff simple questions can feel like bothering someone important - easier to just not ask at all."},
   ]

   global.frankAfterLevel1Complete = [
    {name: "Frank", msg:"You handled it all perfectly! That wasn't easy, but you pushed through."},
    {name: "Frank", msg:"Past the trees you'll find a recharge point and the second level. Good Luck!"}
   ]

//Destroy after initialization
instance_destroy();