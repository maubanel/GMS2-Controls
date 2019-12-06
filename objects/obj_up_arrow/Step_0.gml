/// @description Insert description here
// You can write your code in this editor

inst = instance_position( mouse_x, mouse_y, obj_up_arrow );

if (instance_exists(obj_player_8_dir_2))
{
	if (inst != noone)
	{
		if (id == inst)
		{
			inst.image_index = 1;
			if (mouse_check_button(mb_left))
			{
				inst.image_index = 2;	
			}
			if (mouse_check_button_released(mb_left))
			{
				switch(inst.instance)
				{
					case 0:
					obj_player_8_dir_2.p_speed_next = scr_wrap(obj_player_8_dir_2.p_speed_next, 1);
					break;
				
					case 1:
					obj_player_8_dir_2.turn_rate_next = scr_wrap(obj_player_8_dir_2.turn_rate_next, 1);
					break;
				
					case 2:
					obj_player_8_dir_2.p_acc_next = scr_wrap(obj_player_8_dir_2.p_acc_next, 1);
					break;
				
					case 3:
					obj_player_8_dir_2.p_friction_next = scr_wrap_2(obj_player_8_dir_2.p_friction_next, 1);
					break;
				}
			
			}
		}
	}
	else
	image_index = 0;
}

if (instance_exists(obj_player_4_dir_6))
{
	if (inst != noone)
	{
		if (id == inst)
		{
			inst.image_index = 1;
			if (mouse_check_button(mb_left))
			{
				inst.image_index = 2;	
			}
			if (mouse_check_button_released(mb_left))
			{
				switch(inst.instance)
				{
					case 0:
					obj_player_4_dir_6.p_speed_next = scr_wrap(obj_player_4_dir_6.p_speed_next, 1);
					break;
				
				
					case 2:
					obj_player_4_dir_6.p_acc_next = scr_wrap(obj_player_4_dir_6.p_acc_next, 1);
					break;
				
					case 3:
					obj_player_4_dir_6.p_friction_next = scr_wrap_2(obj_player_4_dir_6.p_friction_next, 1);
					break;
				}
			
			}
		}
	}
	else
	image_index = 0;
}