/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, obj_next_room))
{
	image_index = 1;
	if (mouse_check_button_released(mb_left))
	{
		switch(room)
		{
			case lvl_eight_dir_1:
			room_goto(lvl_eight_dir_2);
			break;
			
			case lvl_eight_dir_2:
			room_goto(lvl_eight_dir_3);
			break;
			
			case lvl_eight_dir_3:
			room_goto(lvl_eight_dir_4);
			break;
			
			case lvl_eight_dir_4:
			room_goto(lvl_eight_dir_5);
			break;
			
			case lvl_eight_dir_5:
			room_goto(lvl_eight_dir_6);
			break;
			
			case lvl_eight_dir_6:
			room_goto(lvl_eight_dir_7);
			break;
			
			case lvl_eight_dir_7:
			room_goto(lvl_eight_dir_8);
			break;
			
			case lvl_eight_dir_8:
			room_goto(lvl_eight_dir_9);
			break;
			
			case lvl_eight_dir_9:
			room_goto(lvl_four_dir_1);
			break;
			
			case lvl_four_dir_1:
			room_goto(lvl_four_dir_2);
			break;
			
			case lvl_four_dir_2:
			room_goto(lvl_four_dir_3);
			break;
			
			case lvl_four_dir_3:
			room_goto(lvl_four_dir_4);
			break;
			
			case lvl_four_dir_4:
			room_goto(lvl_four_dir_5);
			break;
			
			case lvl_four_dir_5:
			room_goto(lvl_four_dir_6);
			break;
			
			case lvl_four_dir_6:
			room_goto(lvl_four_dir_7);
			break;
			
			case lvl_four_dir_7:
			room_goto(lvl_gamepad_1);
			break;
		}
	}
}

else
{
	image_index = 0;	
}

// Shorcut to four directions
if (keyboard_check_pressed(ord("2")))
{
	room_goto(lvl_four_dir_1);
}

// Shorcut to four directions
if (keyboard_check_pressed(ord("3")))
{
	room_goto(lvl_spaceship_1);
}

