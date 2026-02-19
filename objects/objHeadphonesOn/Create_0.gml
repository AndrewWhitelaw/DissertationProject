//Declared in scrMacros
sprite[RIGHT] = sprPlayerRight; //Array for animations
sprite[UP] = sprPlayerUp;
sprite[LEFT] = sprPlayerLeft;
sprite[DOWN] = sprPlayerDown;
sprite[HEADPHONES] = sprPlayerHeadphonesOn;

//Initial state of animation
face = DOWN;
display_set_gui_size(1280, 720);
mask_index = sprite[DOWN]; //Collision for player ALWAYS the down sprite

//Sprite
sprite_index = sprPlayerHeadphonesOn;
image_index = 0;
image_speed = 1;

//So that the battery percentage carries over
var player = instance_nearest(x, y, objPlayer);
if (instance_exists(player)) {
    socialBattery      = player.socialBattery;
    maxSocialBattery   = player.maxSocialBattery;
    displayedBattery   = socialBattery;
} else {
    socialBattery = 0;
    maxSocialBattery = 100;
    displayedBattery = 0;
}

fillLerpSpeed = 0.1;
