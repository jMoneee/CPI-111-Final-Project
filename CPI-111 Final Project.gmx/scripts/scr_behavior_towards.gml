if(!place_snapped(32,32)) exit;

var dir;
dir = point_direction(x,y,obj_player.x, obj_player.y);

//dir == 0 move right
//dire ==1 move up
//dire ==2 move left
//dire == 3 move down
dir = round(dir/90);

if(dir == 4) dir = 0;

if(dir == 0 && direction !=180 && place_free(x+4, y)){
    direction = 0;
    exit;
}
if(dir == 1 && direction !=270 && place_free(x, y-4)){
    direction = 90;
    exit;
}
if(dir == 2 && direction !=0 && place_free(x-4, y)){
    direction = 180;
    exit;
}
if(dir == 1 && direction !=270 && place_free(x, y-4)){
    direction = 270;
}
scr_behavior_walking();
