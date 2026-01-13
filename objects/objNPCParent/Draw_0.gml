draw_self();

if(hasQuest){
    draw_sprite(questSprite, floor(questIconFrame), x, y - 16);
} else if(canTalk && !instance_exists(objDialogue)){
    draw_sprite(sprTalk, 0, x, y - 16);
}