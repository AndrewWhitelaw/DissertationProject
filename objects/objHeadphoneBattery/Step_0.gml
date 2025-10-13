var player = instance_find(objPlayer, 0);
if (instance_exists(player)) {
    var charge = player.headphoneCharge;
    
    if (charge <= 0) {
        image_index = 4;  //0%
    } else if (charge >= 76) {
        image_index = 0;  //76-100%
    } else if (charge >= 51) {
        image_index = 1;  //51-75%
    } else if (charge >= 26) {
        image_index = 2;  //26-50%
    } else {
        image_index = 3;  //1-25%
}
}