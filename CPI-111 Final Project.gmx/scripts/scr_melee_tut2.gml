    sprite_index = spr_swing;
    if (direction == 0 && place_meeting(obj_player.x + 40, obj_player.y, obj_sample_enemy))
     {
        inst = instance_place(obj_player.x + 40, obj_player.y, obj_sample_enemy);
        with (inst) instance_destroy();
     }
     
     else if (direction == 90 && place_meeting(obj_player.x, obj_player.y - 40,obj_sample_enemy))
     {
        inst = instance_place(obj_player.x, obj_player.y - 40, obj_sample_enemy);
        with (inst) instance_destroy();
     }
     
     else if (direction == 180 && place_meeting(obj_player.x - 40, obj_player.y,obj_sample_enemy))
     {
        inst = instance_place(obj_player.x + 40, obj_player.y, obj_sample_enemy);
        with (inst) instance_destroy();
     }
     
     else if (direction == 270 && place_meeting(obj_player.x, obj_player.y + 40,obj_sample_enemy))
     {
        inst = instance_place(obj_player.x, obj_player.y + 40, obj_sample_enemy);
        with (inst) instance_destroy();
     }
