//Player Input
key_right  =  keyboard_check(ord('D'));
key_left   = -keyboard_check(ord('A')) || gamepad_axis_value(0, gp_axislh);
//key_up     = -keyboard_check(ord('W')) || gamepad_axis_value(0, gp_axislv);
//key_down   =  keyboard_check(ord('S')) || gamepad_axis_value(0, gp_axislv);
key_jump   =  keyboard_check(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_attack =  gamepad_button_check_pressed(0, gp_face3);
stick_x = gamepad_axis_value(0, gp_axislh);
stick_y = gamepad_axis_value(0, gp_axislv);

move_x = stick_x;

xsp = move_x * movespeed;

//////////////////////////////////////////////////
/*
if (shoot_right) o_shoot_right += 1; else o_shoot_right = 0; //storing the old variables
if ( shoot_left) o_shoot_left  += 1; else o_shoot_left  = 0;
if (   shoot_up) o_shoot_up    += 1; else o_shoot_up    = 0;
if ( shoot_down) o_shoot_down  += 1; else o_shoot_down  = 0;

shoot_right =  keyboard_check(vk_numpad6);
shoot_left  =  keyboard_check(vk_numpad4);
shoot_up    =  keyboard_check(vk_numpad8);
shoot_down  =  keyboard_check(vk_numpad5);
*/


//React to Inputs
/*
if(stick_x != 0){move_x = stick_x;}
else            {move_x = key_left + key_right;} 
if(stick_y != 0){move_y = stick_y;}
else            {move_y = key_up + key_down;}
*/

//ysp = move_y * movespeed;
