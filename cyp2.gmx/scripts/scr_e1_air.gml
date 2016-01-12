//animations:
image_speed = 0.16;
if(image_index >= 4){image_index = 0;}

//changing states:
if(place_meeting(round(x), round(y+1), par_collide))
{
    if(chasing) state = estate.chase; //resets state to state before air
    else state = estate.idle;
}
