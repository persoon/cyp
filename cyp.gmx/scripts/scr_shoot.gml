//Shooting
/*if(mouse_check_button_pressed(mb_left))
{
    bullet = instance_create(x,y,obj_bullet);
    dir = point_direction(x, y, mouse_x, mouse_y);
    if     (dir <   45 || dir >= 315) {bullet.direction =   0;}
    else if(dir >=  45 && dir <  135) {bullet.direction =  90;}
    else if(dir >= 135 && dir <  225) {bullet.direction = 180;}
    else if(dir >= 225 && dir <  315) {bullet.direction = 270;}
    bullet.image_angle = bullet.direction;
    bullet.speed = 10;
    state = p_state.shoot;
    if(bullet.hspeed != 0) image_xscale = sign(bullet.hspeed);
}*/


bullet = instance_create(x,y,obj_bullet);

if(o_shoot_right == 0 && o_shoot_left == 0 && o_shoot_down == 0 && o_shoot_up == 0)
{
    if     (shoot_right) {bullet.dir_x += bullet.movespeed;}
    else if(shoot_up   ) {bullet.dir_y -= bullet.movespeed;}
    else if(shoot_left ) {bullet.dir_x -= bullet.movespeed;}
    else /*(shoot_down)*/{bullet.dir_y += bullet.movespeed;}
}
else if(o_shoot_right == 0 && shoot_right) {bullet.dir_x += bullet.movespeed; o_shoot_right = 1; o_shoot_up = 0; o_shoot_left = 0; o_shoot_down = 0;}
else if(o_shoot_up    == 0 && shoot_up   ) {bullet.dir_y -= bullet.movespeed; o_shoot_right = 0; o_shoot_up = 1; o_shoot_left = 0; o_shoot_down = 0;}
else if(o_shoot_left  == 0 && shoot_left ) {bullet.dir_x -= bullet.movespeed; o_shoot_right = 0; o_shoot_up = 0; o_shoot_left = 1; o_shoot_down = 0;}
else if(o_shoot_down  == 0 && shoot_down ) {bullet.dir_y += bullet.movespeed; o_shoot_right = 0; o_shoot_up = 0; o_shoot_left = 0; o_shoot_down = 1;}
else if(o_shoot_right >= o_shoot_up &&
        o_shoot_right >= o_shoot_left &&
        o_shoot_right >= o_shoot_down)  {bullet.dir_x += bullet.movespeed;}
else if(o_shoot_up >= o_shoot_left &&
        o_shoot_up >= o_shoot_down)     {bullet.dir_y -= bullet.movespeed;}
else if(o_shoot_left >= o_shoot_down)   {bullet.dir_x -= bullet.movespeed;}
else /* o_shoot_down > ALL */           {bullet.dir_y += bullet.movespeed;}
/*
if     (bullet.direction ==   0){bullet.dir_x += bullet.movespeed;}
else if(bullet.direction ==  90){bullet.dir_y -= bullet.movespeed;}
else if(bullet.direction == 180){bullet.dir_x -= bullet.movespeed;}
else                            {bullet.dir_y += bullet.movespeed;}
*/
//bullet.speed = 10;
//bullet.image_angle = bullet.direction;
state = p_state.shoot;
//if(bullet.hspeed != 0) image_xscale = sign(bullet.hspeed);
/*
if(o_shoot_right == 0 && o_shoot_left == 0 && o_shoot_down == 0 && o_shoot_up == 0)
{
    if     (shoot_right) {bullet.direction =   0;}
    else if(shoot_up   ) {bullet.direction =  90;}
    else if(shoot_left ) {bullet.direction = 180;}
    else                 {bullet.direction = 270;}
}
else if(o_shoot_right == 0 && shoot_right) {bullet.direction =   0; o_shoot_right = 1; o_shoot_up = 0; o_shoot_left = 0; o_shoot_down = 0;}
else if(o_shoot_up    == 0 && shoot_up   ) {bullet.direction =  90; o_shoot_right = 0; o_shoot_up = 1; o_shoot_left = 0; o_shoot_down = 0;}
else if(o_shoot_left  == 0 && shoot_left ) {bullet.direction = 180; o_shoot_right = 0; o_shoot_up = 0; o_shoot_left = 1; o_shoot_down = 0;}
else if(o_shoot_down  == 0 && shoot_down ) {bullet.direction = 270; o_shoot_right = 0; o_shoot_up = 0; o_shoot_left = 0; o_shoot_down = 1;}
else if(o_shoot_right >= o_shoot_up &&
        o_shoot_right >= o_shoot_left &&
        o_shoot_right >= o_shoot_down)  {bullet.direction =   0;}
else if(o_shoot_up >= o_shoot_left &&
        o_shoot_up >= o_shoot_down)     {bullet.direction =  90;}
else if(o_shoot_left >= o_shoot_down)   {bullet.direction = 180;}
else                                    {bullet.direction = 270;}
*/
