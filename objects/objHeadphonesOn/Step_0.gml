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

if (player.headphoneCharge > 0 && keyboard_check(ord("E"))) {
    player.socialBattery = clamp(player.socialBattery + 0.2, 0, player.maxSocialBattery);
    player.headphoneCharge = clamp(player.headphoneCharge - 0.1, 0, player.maxHeadphoneCharge);
} else if (player.headphoneCharge <= 0) {
    player.headphoneCharge = 0;
    //Auto-end animation
    if (image_speed >= 0) image_speed = -0.7;
}

//Smooth fill for display
displayedBattery = lerp(displayedBattery, player.socialBattery, fillLerpSpeed);


//Player no longer holding E so reverse the animation to finish
if (image_speed < 0 && floor(image_index) <= 0) {
    image_index = 0;
    if (instance_exists(player)) player.headphonesAnimating = false;
    instance_destroy();
}