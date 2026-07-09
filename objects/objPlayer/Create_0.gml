xSpeed = 0; //Left and Right
ySpeed = 0; //Up and Down
moveSpeed = 1; //Base movement speed

//Declared in scrMacros
sprite[RIGHT] = sprPlayerRight; //Array for animations
sprite[UP] = sprPlayerUp;
sprite[LEFT] = sprPlayerLeft;
sprite[DOWN] = sprPlayerDown;
sprite[HEADPHONES] = sprPlayerHeadphonesOn;

//Initial state of animation
face = DOWN;

headphonesAnimating = false;
socialBattery = 100;
maxSocialBattery = socialBattery;
displayedBattery = socialBattery; // for smooth transition
fillLerpSpeed = 0.1;

headphoneCharge = 100;
maxHeadphoneCharge = headphoneCharge;
headphoneImageIndex = 0;

gameOverTriggered = false;
gameVictoryTriggered = false;
batteryImageIndex = 0;

//display_set_gui_size(150, 100);
//display_set_gui_size(1280, 720);

//Quest Setting - Level 1
global.playerHasCoffee = false;
global.playerHasColdFood = false;
global.playerHasWifi = false;

//Change to see if worked