var right_was_free = !position_meeting(x+7, yprevious+2, par_collide);
var right_is_free  = !position_meeting(x+7, y+2, par_collide);
var left_was_free  = !position_meeting(x-7, yprevious+2, par_collide);
var left_is_free   = !position_meeting(x-7, y+2, par_collide);
var moving_down    = yprevious < y;

if     (moving_down && right_was_free && !right_is_free)
{
    for(i = 0; position_meeting(    x+7, y+1+i, par_collide); i++){} //moving sprite to wall
    for(j = 0; position_meeting(x+(5+j),   y+2, par_collide); j++){}
    y += i;
    x += j;
    
    state = pstate.hanging;
    scr_p_state_init();
    image_xscale =  1;
}
else if(moving_down && left_was_free && !left_is_free)
{
    for(i = 0; !position_meeting(    x-7, y+1+i, par_collide); i++){}
    for(j = 0; !position_meeting(x-(5+j),   y+2, par_collide); j++){}
    y += i;
    x -= j;
    
    state = pstate.hanging;
    scr_p_state_init();
    image_xscale = -1;
}
