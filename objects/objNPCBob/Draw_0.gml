// Inherit the parent event
//event_inherited();
draw_self();

if(isQuestActive("alexCoffee")){
    draw_sprite(sprQuest, floor(questIconFrame), x, y - 16);
}else if(isQuestActive("adamFood")){
    draw_sprite(sprQuest2, floor(questIconFrame), x, y - 16);
}else if(isQuestActive("ameliaWifi")){
    draw_sprite(sprQuest3, floor(questIconFrame), x, y - 16);
}else if(canTalk && !instance_exists(objDialogue)){
    draw_sprite(sprTalk, 0, x, y - 16);
}

