draw_self();

if(canTalk && !instance_exists(objDialogue)){
    draw_sprite(sprTalk, 0, x, y - 16);
}