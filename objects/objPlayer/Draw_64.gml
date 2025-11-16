//Top left
var uiX = 0; 
var uiY = 0; 

//Border size to sprite
var borderWidth = 14;
var borderHeight = 9;

//Filling with the battery
var fillRatio = displayedBattery / maxSocialBattery;
fillRatio = clamp(fillRatio, 0, 1);

//Aligning the meter in the border
var offsetY = 3;
var offsetX = 2;   

//Drawing the actual meter in the border
draw_sprite_stretched(
    sprMeter,
    0,
    uiX,             
    uiY + offsetY,  
    fillRatio * borderWidth, //Calculates the amount of bar left
    borderHeight - offsetX
);

//Border to finish
draw_sprite(sprSocialBatteryBorder, 0, uiX, uiY);

var battery = instance_find(objHeadphoneBattery, 0);
if (instance_exists(battery)) {
    draw_sprite(sprHeadphoneBattery, battery.image_index, 134, 0);
}

