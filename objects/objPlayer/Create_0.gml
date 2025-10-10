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
headphoneCharge = 100;