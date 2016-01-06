//flip image based on direction
if(xsp != 0) image_xscale = sign(xsp);

ysp += global.grav;
ysp = clamp(ysp, -global.grav_max, global.grav_max);

//Horizontal Collision
if(place_meeting(x+xsp, y, obj_wall))
{
    while(!place_meeting(x+sign(xsp), y, obj_wall))
    {
        x += sign(xsp);   
    }
    xsp = 0;
}
//Vertical Collision
if(place_meeting(x, y+ysp, obj_wall))
{
    while(!place_meeting(x, y+sign(ysp), obj_wall))
    {
        y += sign(ysp);   
    }
    ysp = 0;
}

//Move object
x += xsp;
y += ysp;

