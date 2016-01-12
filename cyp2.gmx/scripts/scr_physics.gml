ysp += global.grav;
ysp  = clamp(ysp, -global.grav_max, global.grav_max);
xsp  = clamp(xsp, -global.grav_max, global.grav_max);

if(place_meeting(round(x+xsp), round(y), par_collide))
{
    while(!place_meeting(round(x+xsp), round(y), par_collide))
    {
        x += sign(xsp);
    }
    xsp = 0;
}
x += xsp;
if(place_meeting(round(x), round(y+ysp), par_collide))
{
    while(!place_meeting(round(x), round(y+sign(ysp)), par_collide))
    {
        y += sign(ysp);
    }
    ysp = 0;
}
if(xsp != 0){image_xscale = sign(xsp);} //flips image in direction moving
y += ysp;
