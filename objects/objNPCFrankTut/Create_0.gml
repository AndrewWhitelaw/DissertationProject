// Inherit the parent event
event_inherited();

image_speed = 0;

dialog = global.frankStartTutorial;
dialog = global.frankAfterTutorial;
batteryCost = 5;
if(!isQuestCompleted("frankTutorial")){
    hasQuest = true;
}
questSprite = sprQuest;
