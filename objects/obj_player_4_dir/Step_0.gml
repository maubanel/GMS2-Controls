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


			

// Calculate new speed based on axis
hspeed = x_axis * p_speed * tick;
vspeed = y_axis * p_speed * tick;

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