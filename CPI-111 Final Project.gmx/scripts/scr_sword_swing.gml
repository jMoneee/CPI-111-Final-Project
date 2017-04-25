if (instance_number(obj_sword_swing) == 0)
 {
    if (obj_player.direction = 0)
     {
        startX = obj_player.x + 40; 
        startY = obj_player.y - 40;
        instance_create(startX, startY, obj_sword_swing);
        with (obj_sword_swing)
         {
            sprite_index = spr_sword_right;
            direction = 270;
            speed = 9;
            alarm[0] = 8;
         }
     }
     
    if (obj_player.direction = 90)
    {
        startX = obj_player.x - 40;
        startY = obj_player.y - 40;
        instance_create(startX, startY, obj_sword_swing);
        with (obj_sword_swing)
         {
            sprite_index = spr_sword_up;
            direction = 0;
            speed = 9;
            alarm[0] = 8;
         }
    }
    
    if (obj_player.direction = 180)
     {
        startX = obj_player.x - 40;
        startY = obj_player.y + 40;
        instance_create(startX, startY, obj_sword_swing);
        with (obj_sword_swing)
         {
            sprite_index = spr_sword_left;
            direction = 90;
            speed = 9;
            alarm[0] = 8;
         }
     }
     
    if (obj_player.direction = 270)
     {
         startX = obj_player.x + 40;
         startY = obj_player.y + 40;
         instance_create(startX, startY, obj_sword_swing);
         with (obj_sword_swing)
          {
            sprite_index = spr_sword_down;
            direction = 180;
            speed = 9;
            alarm[0] = 8;
          }
     }
 }
