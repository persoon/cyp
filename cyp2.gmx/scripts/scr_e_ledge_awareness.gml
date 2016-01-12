//for enemies that don't jump off ledges
while(!place_meeting(round(x + (sprite_width/2) + xsp), round(y+1), par_collide))
{
    xsp -= sign(xsp);
}
