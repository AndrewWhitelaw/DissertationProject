function createDialogue(messages, choices, batteryCost = 15){
    if(instance_exists(objDialogue)) return;
        
    var inst = instance_create_depth(0, 0, 0, objDialogue);
    inst.messages = messages;
    inst.currentMessage = 0;
    inst.choices = choices; 
    inst.hasChoices = (array_length(choices) > 0);
    
    if(instance_exists(objPlayer)) {
        objPlayer.socialBattery -= batteryCost;
    }
}

global.charColours = {
    "Alex": c_red,
    "Bob": c_purple,
    "Adam": c_aqua,
    "Frank": c_orange
}
//First Quest
global.alexCafeQuest = [
{
    name: "Alex",
    msg: "Hey! I'm really craving a coffee, can you get one for me?"
},    
]

//Alex's dialogue when you bring the coffee
global.alexReceiveCoffee = [
{
	name: "Alex",
	msg: "Perfect! Thank you for getting that for me!"
},
{
	name: "Alex",
	msg: "You're a lifesaver!"
}
]

global.alexAfterQuest = [
{
	name: "Alex",
	msg: "This coffee hits the spot! Thanks again."
}
]

global.adamCafeTalk = [
{
    name: "Adam",  
    msg: "Not seen you around here before."
},
{
    name: "Adam",
    msg: "I love coming here for the coffee!" 
}
]

global.bobWorkTalk = [
{
    name: "Bob",
    msg: "Welcome to our cafe, what will you be having today?"
}    
]

global.bobCoffeeOrder = [
{
    name: "Bob",
    msg: "One coffee coming right up!"
},
{
	name: "Bob",
	msg: "Here you go - fresh and hot!"
}
]

global.bobTeaOrder = [
{
    name: "Bob",
    msg: "Great choice! Here's your tea."
},
]

global.bobNothingOrder = [
{
    name: "Bob",
    msg: "No problem, let me know if you need anything!"
},
]