var player = instance_nearest(x, y, objPlayer);

//Once E is pressed
if (!keyboard_check(ord("E"))) {
    image_speed = -0.7;
} else {
    //E being held stop animation at last frame
    if (image_index < image_number - 1) {
        image_speed = 0.7;
    } else {
        image_index = image_number - 1;
        image_speed = 0; 
    }
}

//Player no longer holding E so reverse the animation to finish
if (image_speed < 0 && floor(image_index) <= 0) {
    image_index = 0;
    if (instance_exists(player)) player.headphonesAnimating = false;
    instance_destroy();
}

