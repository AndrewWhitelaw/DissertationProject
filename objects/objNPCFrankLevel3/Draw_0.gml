draw_self();

if(hasQuest){
    draw_sprite(questSprite, floor(questIconFrame), x - 8, y - 28);
} else if(canTalk && !instance_exists(objDialogue)){
    draw_sprite(sprTalk, 0, x - 8, y - 28);
}