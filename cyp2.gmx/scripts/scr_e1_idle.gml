if(round(xsp) != 0) {xsp -= 0.2 * sign(xsp);} //friction..?
else{xsp = round(xsp);}

//animations
image_speed = 0.16;
if(image_index >= 4){image_index = 0;}

//changing states
if(instance_exists(obj_player) && abs(obj_player.y - y) < 32 && abs(obj_player.x - x) < chase_distance){state = estate.chase;}
if(!place_meeting(round(x), round(y+1), par_collide)){state = estate.air;}
