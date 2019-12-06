/// @description 8 Direction Movement

// Movement with controller and keyboard

// Get time since last frame in ms
var tick = delta_time/1000000;

// Get WASD & ARROW KEYS
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));

// Get Axis from keyboard
x_axis = right - left;
y_axis = down - up;


if (x_axis == 0 && y_axis == 0)
{
	if (global.gamepad[0] != noone)
	{
		x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
		y_axis = gamepad_axis_value(global.gamepad[0], gp_axislv);
			
		// To match keyboard limitation
		if (x_axis != 0 || y_axis != 0)
		{
			var angle = arctan2( y_axis, x_axis ) * -1;
			octant = round( 8 * angle / (2*pi) + 8) % 8;
			switch octant
			{
				case 0: // Right
				x_axis = 1;
				y_axis = 0;
				break;
				
				case 1: // Right & Up
				x_axis = 1;
				y_axis = -1;
				break;
				
				case 2: // Up
				x_axis = 0;
				y_axis = -1;
				break;
				
				case 3: // Left & Up
				x_axis = -1;
				y_axis = -1;
				break;
				
				case 4: // Left
				x_axis = -1;
				y_axis = 0;
				break;
				
				case 5: // Left & Down
				x_axis = -1;
				y_axis = 1;
				break;
				
				case 6: // Down
				x_axis = 0;
				y_axis = 1;
				break;
				
				case 7: // Right & Down
				x_axis = 1;
				y_axis = 1;
			}
		}		
	}
}


// Calculate new speed based on axis
hspeed += x_axis * p_acc * tick;
vspeed += y_axis * p_acc * tick;

// Friction
speed -= p_friction * tick;

// Normalize diagonals whose magnitude is greater than 1 as well as clamp friction and max speed
speed = clamp(speed, 0, p_speed * tick); 

// normalize diagonals whose magnitude is greater than 1
//if (x_axis != 0 && y_axis != 0)
//{
//	hspeed *= p_normalize;	
//	vspeed *= p_normalize ;
//}



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


// Player direction animates to new position 
// Update player direction
if (speed != 0) // Only update direction if moving
{ 
	if (image_angle != direction) // Animate between if there is a change
	{ 
		// Get angle difference in degrees between -180 and 180 in angle change
		var new_ang = angle_difference(image_angle, direction);
			
		// Takes the smaller of the two the anlge or the maximum turn_rate
		//		and multiplies by the the sign of the angle
		image_angle -= min(abs(new_ang), turn_rate * tick) * sign(new_ang);
		// Adds new angle and keeps between 0 and 359
		image_angle = image_angle mod(360); 
	}
	sprite_index = spr_top_down_symmetric;	
}
else
{
	sprite_index = spr_top_down_symmetric_idle;	
}