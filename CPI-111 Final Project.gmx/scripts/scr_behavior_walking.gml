var ahead, left, right;

ahead = place_free(x+hspeed, y);
//moving loeft or right
if(vspeed == 0){
left = place_free(x, y+4);
right =place_free(x, y-4);
ahead = place_free(x+hspeed, y);

if(!ahead && !left && !right){
    direction += 180;
    exit;
    }
    while(true){
        if(ahead && random(3)<1){
            exit;
        }
        if(right && random(3)<1){
            direction = 90;
            exit;
        }
        if(left && random(3)<1){
        direction = 270;
        exit;
        
        }
    }
    
}
//moving up or down
else{

    right = place_free(x-4, y);
    left = place_free(x+4, y);
    ahead = place_free(x, y +vspeed);
    
    if(!ahead && !left && !right){
    vspeed = -vspeed;
    
    }
    while(true){  
        if(ahead && random(3)<1){
            exit;
        }
        if(right && random(3)<1){
            direction = 180;
            exit;
        }
        if(left && random(3) < 1){
        direction = 0;
        exit;
        }
    }
}
