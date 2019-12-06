/// @description Insert description here

// Movement with controller and keyboard

// Get time since last frame in ms
var tick = delta_time/1000000;

// Get WASD & ARROW KEYS
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));

// Get Axis from keyboard
x_axis = left - right;



if (x_axis == 0)
{
	if (global.gamepad[0] != noone)
	{
		x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);

	}
}



// Calculate new speed based on axis
if (x_axis != 0)
{
	// Rotate spaceship
	image_angle += x_axis * turn_rate * tick;
	
}

// Add existing direction vector to new acceleration vector
if (up)
{
	
	motion_add(image_angle, up * p_acc * tick);
}


// Friction
speed -= p_friction * tick;

// Normalize diagonals whose magnitude is greater than 1 as well as clamp friction and max speed
speed = clamp(speed, 0, p_max_speed * tick); 


// keep player on screen
move_wrap(true, true, sprite_get_width(spr_player_1));
if (x > obj_frame.x + width_play_area  - sprite_get_width(spr_player_1) * .5 )
{
	x =  obj_frame.x - width_play_area + sprite_get_width(spr_player_1) * .5 ;
}

else if (x < obj_frame.x - width_play_area + sprite_get_width(spr_player_1) * .5 )
{
	x = 	obj_frame.x + width_play_area  - sprite_get_width(spr_player_1) * .5;
}

if (y > obj_frame.y + width_play_area  - sprite_get_height(spr_player_1) * .5 )
{
	y =  obj_frame.y- width_play_area + sprite_get_height(spr_player_1) * .5 ;
}

else if (y < obj_frame.y - width_play_area + sprite_get_height(spr_player_1) * .5 )
{
	y = obj_frame.y + width_play_area  - sprite_get_height(spr_player_1) * .5;
}