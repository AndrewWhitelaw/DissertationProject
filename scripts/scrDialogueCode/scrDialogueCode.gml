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

global.welcomeDialog = [
{
    name: "Alex",
    msg: "This Cafe here is great!"
},

{
    name: "Frank",
    msg: "Good to know, guess I will check it out."
},    
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