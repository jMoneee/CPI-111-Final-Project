    if(!place_snapped(40,40)) exit;
    //calculate the distance to player, and visibility
    var dist, vis;
    dist = point_distance(x,y,obj_player.x, obj_player.y);
    //is there a wall between the mummy and the player?
    vis = !collision_line(x+16,y+16,obj_player.x+16, 
        obj_player.y+16,obj_wall,false,false);
    
    //execute attack rules in order
    if (vis) { scr_behavior_towards(); exit;}//attack!!
    //too far away, just walk around
    if (dist>200){ scr_behavior_walking(); exit;} 
    //close, out of sight...attack half the time
    if (random(2)<1) {scr_behavior_towards(); exit;}
    //otherwise, just wander around 
    scr_behavior_walking(); 


