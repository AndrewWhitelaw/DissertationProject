// Hide player while headphones animation is active
if (instance_exists(objHeadphonesOn)) {
    visible = false;
} else {
    visible = true;
}

var player_start_x = x;
var player_start_y = y;


rightKey = keyboard_check(vk_right);  //Right arrow
leftKey = keyboard_check(vk_left); //Left arrow
upKey = keyboard_check(vk_up); //Up arrow
downKey = keyboard_check(vk_down); //Down arrow

xSpeed = (rightKey - leftKey) * moveSpeed; //Press right and not left = 1 go right, vice versa with left = -1
ySpeed = (downKey - upKey) * moveSpeed; //Same as above

//pauser
if instance_exists(objPause) || instance_exists(objHeadphonesOn){
    xSpeed = 0;
    ySpeed = 0;
}

//Set sprite
mask_index = sprite[DOWN]; //Collision for player ALWAYS the down sprite
if ySpeed == 0 // for Diagonals
{
    if xSpeed > 0{face = RIGHT}; 
    if xSpeed < 0{face = LEFT};    
}
if xSpeed > 0 && face == LEFT{
    face = RIGHT;
}
if  xSpeed < 0 && face == RIGHT{
    face = LEFT;
}
if xSpeed == 0
{
    if ySpeed > 0{face = DOWN};
    if ySpeed < 0{face = UP};    
} 
if ySpeed > 0 && face == UP{
    face = DOWN;
}  
if ySpeed < 0 && face == DOWN{
    face = UP;
}  

sprite_index = sprite[face];


if (keyboard_check_pressed(ord("E")) && !instance_exists(objHeadphonesOn)) {
    var _inst = instance_create_depth(player_start_x, player_start_y, depth-1, objHeadphonesOn);
}


//Collision
if place_meeting(x + xSpeed, y, objWall) == true //If wall obj detected in x axis stop movement
{
    xSpeed = 0;
}
if place_meeting(x , y + ySpeed, objWall) == true //If wall obj detected in y axis stop movement
{
    ySpeed = 0;
}

x += xSpeed; //Built in x movement now has value calculated
y += ySpeed; //Built in y movement now has value calculated


//Animate
if xSpeed == 0 && ySpeed == 0{
    image_index = 0;
}

//depth
depth = -bbox_bottom;

// --- Social Battery Logic ---
if (instance_exists(objHeadphonesOn)) {
    // Charging while headphones are on
    socialBattery += 0.25;
} else {
    // Draining slowly otherwise
    socialBattery -= 0.1;
}

// Clamp between 0 and max
socialBattery = clamp(socialBattery, 0, maxSocialBattery);

// Smooth visual transition
displayedBattery += (socialBattery - displayedBattery) * fillLerpSpeed;