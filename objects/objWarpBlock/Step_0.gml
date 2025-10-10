if place_meeting(x, y, objPlayer) && !instance_exists(objWarp)
{
   var inst = instance_create_depth(0, 0, -9999, objWarp); //Storing the ID of the instance
   inst.target_x = target_x;
   inst.target_y = target_y;
   inst.target_rm = target_rm;   
   inst.target_face = target_face; 
}