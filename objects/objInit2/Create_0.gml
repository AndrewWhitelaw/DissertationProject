//Check if already initialized
if (variable_global_exists("systemInitialized2")) {
    instance_destroy();
    exit;
}

//Mark as initialized
global.systemInitialized = true;

// Initialize quest system
global.quests = {
     alexHost: false,
     ameliaDrink: false,
     bobCompliment: false,
     frankLevel2: false,
}

global.questComplete = {
     alexHost: false,
     ameliaDrink: false,
     bobCompliment: false,
     frankLevel2: false,
}

//Initialize all global dialogues colours
   global.charColours = {
       "Alex": c_red,
       "Frank": c_olive,
       "Friend 1": c_ltgray,
       "Friend 2": c_ltgray,
       "Friend 3": c_ltgray,
       "Amelia": c_orange,
       "Bob": c_purple,
}

global.playerIntroduction = false
global.playerHasDrink = false;

global.alexIntro = [
     {name: "Alex", msg: "Look who it is! Thank you for getting my coffee earlier glad you could come!"},
]

global.alexChoices = [
     {name: "Alex", msg: "I'd like you to meet some of my closest buddies here, why not introduce yourself!"}
]

global.alexAfterInto = [
     {name: "Alex", msg:"Don't be a stranger, grab and drink and make yourself at home!"}
]

global.playerIntoShy = [
     {name: "Friend 1", msg:"Nice to meet you"},
     {name: "Friend 2", msg:"No need to act shy, you can be yourself here"},
     {name: "Friend 3", msg:"...Good to see you"}
]

global.playerIntoConfident = [
     {name: "Friend 1", msg:"Alex has said good things about you!"},
     {name: "Friend 2", msg:"Nice to meet you, love the energy!"},
     {name: "Friend 3", msg:"Welcome to the party!"}
]

global.playerIntroAvoid = [
     {name: "Alex", msg:"Oh, OK take your time."}
]

global.ameliAskForDrink = [
     {name: "Amelia", msg:"Hey, can you get me my drink from the table near the group of people?"},
     {name: "Amelia", msg:"I feel a bit nervous going up to them."}
]

global.ameliaWaitingForDrink = [
     {name: "Amelia", msg:"Have you got my drink yet?"},
]

global.ameliaGetsDrink = [
     {name: "Amelia", msg:"Thank you so much! I wish I had confidence like yours"},
]

global.bobStartTalk = [
     {name: "Bob", msg:"Hey man, I remember you from the Cafe, good to see you here"},
     {name: "Frank", msg:"Oh...hi"},
]

global.bobComplimentBack = [
     {name: "Bob", msg:"Don't mention it and thank you! I love this jacket"}
]

global.bobAwkwardBack = [
     {name: "Bob", msg:"yeah... no problem"}
]

global.bobDeflected = [
     {name: "Bob", msg:"My bad for asking I guess..."}
]

global.bobChoices = [
     {name: "Bob", msg:"I meant to say before, I really like your headphones!"}
]

global.bobGeneral = [
     {name: "Bob", msg:"See you around!"}
]

global.frankLevel2Start = [
     {name: "Frank", msg:"Welcome to the second level, A house party!!"},
     {name: "Frank", msg:"Although I'm sure to both of us that is a dreaded thought to hear"},
     {name: "Frank", msg:"Same as the last level, go through and complete the quests you can find."},
     {name: "Frank", msg:"Above me is a recharge point, step on it to recharge your headphones to full"},
     {name: "Frank", msg:"And be careful, you will constantly lose social battery during this level so pay attention! Good Luck!"}
]

global.frankAfterLevel2Start = [
     {name: "Frank", msg:"Good luck!"}
]

global.frankLevel2Complete = [
     {name: "Frank", msg:"Excellent! You survived the house party, a chaotic social environment."},
     {name: "Frank", msg:"Alex's group introduction put you in the spotlight. Multiple eyes on you, expectations to be interesting, even 'hello' feels like a performance under those conditions."},
     {name: "Frank", msg:"Amelia's drink task showed how proximity to groups affects you. They weren't even talking to you, but their presence alone creates pressure and self-consciousness."},
     {name: "Frank", msg:"Bob's compliment proved that positive attention can be just as uncomfortable as negative. Accepting praise feels arrogant, deflecting it feels rude."}
]

global.frankAfterLevel2Complete = [ 
     {name: "Frank", msg:"Now that this has been completed it is time for the final level."},
     {name: "Frank", msg:"Continue past the neighbourhood to reach the last area. See you there!"}
]

//Destroy after initialization
instance_destroy();