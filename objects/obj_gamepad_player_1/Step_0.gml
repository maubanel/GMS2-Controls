/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
// Get time since last frame in ms
var tick = delta_time/1000000;

// Set Axis to Zero
x_axis = 0;
y_axis = 0;

if (global.gamepad[0] != noone)
{
	x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
	y_axis = gamepad_axis_value(global.gamepad[0], gp_axislv);		
}

//static float EaseOut4(float Time) { return 1 - (--Time)*Time*Time*Time; }

// x_axis = (1 - (--x_axis) * x_axis * x_axis  * x_axis );
// y_axis = (1 - (--y_axis) * y_axis * y_axis  * y_axis );

gamepad_magnitude = point_distance(0, 0, x_axis, y_axis);

// gamepad_magnitude = gamepad_magnitude * gamepad_magnitude * gamepad_magnitude * gamepad_magnitude * gamepad_magnitude;
gamepad_magnitude = (1 + (--gamepad_magnitude) * gamepad_magnitude * gamepad_magnitude  * gamepad_magnitude * gamepad_magnitude);
//x_axis *= gamepad_magnitude;
//y_axis *= gamepad_magnitude;

// Calculate new speed based on axis
hspeed = x_axis * p_speed * tick;
vspeed = y_axis * p_speed * tick;

// Friction
speed -= p_friction * tick;

speed = clamp(speed, 0, p_speed * tick);

// keep player on screen
move_wrap(true, true, sprite_get_width(spr_peng_d) * .5);

if (x > obj_frame.x + width_play_area  - sprite_get_width(spr_peng_d) * .5 )
{
	x =  obj_frame.x - width_play_area + sprite_get_width(spr_peng_d) * .5 ;
}

else if (x < obj_frame.x - width_play_area + sprite_get_width(spr_peng_d) * .5 )
{
	x = 	obj_frame.x + width_play_area  - sprite_get_width(spr_peng_d) * .5;
}

if (y > obj_frame.y + width_play_area  - sprite_get_height(spr_peng_d) * .5 )
{
	y =  obj_frame.y- width_play_area + sprite_get_height(spr_peng_d) * .5 ;
}

else if (y < obj_frame.y - width_play_area + sprite_get_height(spr_peng_d) * .5 )
{
	y = obj_frame.y + width_play_area  - sprite_get_height(spr_peng_d) * .5;
}

// Pick Animation Frame
if (x_axis != 0 || y_axis != 0)
{
	var angle = arctan2( y_axis, x_axis ) * -1; // Get angle in radians from joystick
	octant = round( 8 * angle / (2*pi) + 8) % 8; // split 360 into 8 sections and determine the current section 
	switch octant
	{
		case 0: // Right
		sprite_index = spr_peng_r;
		break;
			
		case 1: // Right Up
		sprite_index = spr_peng_r_u;
		break;
				
		case 2: // Up
		sprite_index = spr_peng_u;
		break;

		case 3: // Left Up
		sprite_index = spr_peng_l_u;
		break;
		
		case 4: // Left
		sprite_index = spr_peng_l;
		break;
			
		case 5: // Left Down
		sprite_index = spr_peng_l_d;
		break;
				
		case 6: // Down
		sprite_index = spr_peng_d;
		break;

		case 7: // Right Down
		sprite_index = spr_peng_r_d;
		break;
	}
}

else // Switch to idle sprite
{
	switch(sprite_index)
	{
		case spr_peng_r:
		sprite_index = spr_peng_r_i;
		break;
		
		case spr_peng_r_u:
		sprite_index = spr_peng_r_u_i;
		break;
		
		case spr_peng_u:
		sprite_index = spr_peng_u_i;
		break;
		
		case spr_peng_l_u:
		sprite_index = spr_peng_l_u_i;
		break;
		
		case spr_peng_l:
		sprite_index = spr_peng_l_i;
		break;
		
		case spr_peng_l_d:
		sprite_index = spr_peng_l_d_i;
		break;
		
		case spr_peng_d:
		sprite_index = spr_peng_d_i;
		break;
		
		case spr_peng_r_d:
		sprite_index = spr_peng_r_d_i;
		break;
	}
}

// Adjust speed of animation
image_speed = speed / (p_speed * tick);

show_debug_message(speed);