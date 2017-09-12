if (global.knife == 1)
 {
    instance_create(obj_player.x, obj_player.y, obj_knife_armed);
    global.knife = 0;
 }
