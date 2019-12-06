/// @description Insert description here
// You can write your code in this editor
// Get time since last frame in ms
var tick = delta_time/1000000;

// Set Axis to Zero
x_axis = 0;
y_axis = 0;

// Check if last button pressed && key is still pressed to then move in that direction
if (keyboard_check(vk_right) && keyboard_lastkey == vk_right || keyboard_check(ord("D")) && keyboard_lastkey = ord("D"))
{
	x_axis = 1;
	y_axis = 0;
}

else if (keyboard_check(vk_left) && keyboard_lastkey == vk_left || keyboard_check(ord("A")) && keyboard_lastkey == ord("A"))
{
	x_axis = -1;
	y_axis = 0;			
}
			
else if (keyboard_check(vk_down) && keyboard_lastkey == vk_down || keyboard_check(ord("S")) && keyboard_lastkey == ord("S"))
{
	x_axis = 0;
	y_axis = 1;	
}

else if (keyboard_check(vk_up) && keyboard_lastkey == vk_up || keyboard_check(ord("W")) && keyboard_lastkey == ord("W"))
{
	x_axis = 0;
	y_axis = -1;	
}

else if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	x_axis = 1;
	y_axis = 0;
}

else if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	x_axis = -1;
	y_axis = 0;		
}

else if (keyboard_check(vk_down) || keyboard_check(ord("S")))
{
	x_axis = 0;
	y_axis = 1;	
}
			
			
else if (keyboard_check(vk_up) || keyboard_check(ord("W")))
{
	x_axis = 0;
	y_axis = -1;	
}

// Check joystick
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
			octant = round( 4 * angle / (2*pi) + 4) % 4;
			switch octant
			{
				case 0: // Right
				x_axis = 1;
				y_axis = 0;
				break;
			
				case 1: // Up
				x_axis = 0;
				y_axis = -1;
				break;
				
				case 2: // Left
				x_axis = -1;
				y_axis = 0;
				break;

				case 3: // Down
				x_axis = 0;
				y_axis = 1;
				break;
			}
		}
	}
}
// Calculate new speed based on axis
hspeed += x_axis * p_acc * tick;
vspeed += y_axis * p_acc * tick;

// Friction
speed -= p_friction * tick;

speed = clamp(speed, 0, p_speed * tick);

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

// Animate Player
if (hspeed > 0)
{
	sprite_index = spr_player_right;
	image_xscale = 1;
}	
else if (hspeed < 0)
{
	sprite_index = spr_player_right;
	image_xscale = -1;
}
else if (vspeed > 0)
{
	sprite_index = spr_player_down;	
}
else if (vspeed < 0)
{
	sprite_index = spr_player_up;	
}
else
{
	switch (sprite_index)
	{
		case spr_player_down:
		sprite_index = spr_player_down_idle;
		break;
		
		case spr_player_up:
		sprite_index = spr_player_up_idle;
		break;
		
		case spr_player_right:
		sprite_index = spr_player_right_idle;
		break;
		
	}
		
}
