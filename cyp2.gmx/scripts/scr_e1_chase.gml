if(!instance_exists(obj_player) || distance_to_object(obj_player) > idle_distance){state = estate.idle;}
else if(!place_meeting(round(x), round(y+1), par_collide)){state = estate.air;}
else
{
    xsp = movespeed * sign(obj_player.x-x);
    //animations:
    image_speed = 0.16;
    if(image_index < 4){image_index = 4;}
    //this is where damage elements for chase come into play:
    scr_e_pointy();
    scr_e_ledge_awareness();
}
