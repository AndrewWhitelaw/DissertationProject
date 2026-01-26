//Inherit the parent event
event_inherited();

dialog = global.ameliaAskForWifi;
dialog = global.ameliaWaitingForWifi;
dialog = global.ameliaWrongPassword;
dialog = global.ameliaReceiveWifi;
dialog = global.ameliaAfterWifi;

if(!isQuestCompleted("ameliaWifi")){
    hasQuest = true;
}
questSprite = sprQuest3;
batteryCost = 15;