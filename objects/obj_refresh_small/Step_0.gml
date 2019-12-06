/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, obj_refresh_small))
{
	image_index = 1;
	
	if (mouse_check_button(mb_left))
	{
		image_index = 2;	
	}
	
	if (mouse_check_button_released(mb_left))
	{
		if (instance_exists(obj_player_8_dir_2))
		{
			obj_player_8_dir_2.p_speed = obj_player_8_dir_2.p_speed_next;
			obj_player_8_dir_2.turn_rate = obj_player_8_dir_2.turn_rate_next;
			obj_player_8_dir_2.p_acc = obj_player_8_dir_2.p_acc_next;
			obj_player_8_dir_2.p_friction = obj_player_8_dir_2.p_friction_next;
		}
		if (instance_exists(obj_player_4_dir_6))
		{
			obj_player_4_dir_6.p_speed = obj_player_4_dir_6.p_speed_next;
			obj_player_4_dir_6.p_acc = obj_player_4_dir_6.p_acc_next;
			obj_player_4_dir_6.p_friction = obj_player_4_dir_6.p_friction_next;
		}
	}
}

else
{
	image_index = 0;	
}