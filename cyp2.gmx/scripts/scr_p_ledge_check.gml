var right_was_free = !position_meeting(x+7, yprevious+2, par_collide);
var right_is_free  = !position_meeting(x+7, y+2, par_collide);
var left_was_free  = !position_meeting(x-7, yprevious+2, par_collide);
var left_is_free   = !position_meeting(x-7, y+2, par_collide);
var moving_down    = yprevious < y;

if     (moving_down && right_was_free && !right_is_free)
{
    ledge = instance_place(x+7, y+2, par_collide);
    ledge_left = ledge.x - ledge.sprite_width/2; //top right is the ledge;
    ledge_top  = ledge.y - ledge.sprite_height/2;
    x = ledge_left - 5; //this is the coordinates the player grabs on the ledge
    y = ledge_top - 2;
    
    state = pstate.hanging;
    scr_p_state_init();
    image_xscale =  1;
}
else if(moving_down && left_was_free && !left_is_free)
{
    ledge = instance_place(x-7, y+2, par_collide);
    ledge_right = ledge.x + ledge.sprite_width/2;
    ledge_top  = ledge.y - ledge.sprite_height/2;
    x = ledge_right + 5;
    y = ledge_top - 2;
    
    state = pstate.hanging;
    scr_p_state_init();
    image_xscale = -1;
}
