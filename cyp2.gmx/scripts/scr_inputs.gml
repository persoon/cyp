move_x      = gamepad_axis_value(0, gp_axislh);          //left stick horizontal
move_y      = gamepad_axis_value(0, gp_axislv);
key_jump    = gamepad_button_check_pressed(0, gp_face1); //a
key_attack  = gamepad_button_check_pressed(0, gp_face3); //x
key_held_attack  = gamepad_button_check(0, gp_face3); //x held down
key_restart = gamepad_button_check_pressed(0, gp_select);
if(key_restart){room_restart();}
