//Declared in scrMacros
sprite[RIGHT] = sprPlayerRight; //Array for animations
sprite[UP] = sprPlayerUp;
sprite[LEFT] = sprPlayerLeft;
sprite[DOWN] = sprPlayerDown;
sprite[HEADPHONES] = sprPlayerHeadphonesOn;

//Initial state of animation
face = DOWN;

mask_index = sprite[DOWN]; //Collision for player ALWAYS the down sprite


// Sprite
sprite_index = sprPlayerHeadphonesOn;
image_index = 0;
image_speed = 1;
