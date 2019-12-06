/// @description HUD


/**********************************************************/
//
//
//				LEFT HAND SIDE CHART 
//
//
/**********************************************************/
if (room >= lvl_eight_dir_1 && room < lvl_eight_dir_7)
{
	scr_left_hand_chart();
}
else if (room == lvl_eight_dir_7)
{
	scr_left_hand_chart_2();	
}
else if (room == lvl_eight_dir_8)
{
	scr_left_hand_chart_3();
}

else if (room == lvl_eight_dir_9)
{
	scr_left_hand_chart_9();	
}

else if (room == lvl_four_dir_1)
{
	scr_left_hand_chart_4();
}	

else if ( room == lvl_four_dir_2)
{
	scr_left_hand_chart_5();
}

else if (room == lvl_four_dir_3)
{
	scr_left_hand_chart_6();	
}

else if (room == lvl_four_dir_4)
{
	scr_left_hand_chart_7();	
}

else if (room == lvl_four_dir_5)
{
	scr_left_hand_chart_8();	
}

else if (room == lvl_four_dir_6 || room ==  lvl_four_dir_7)
{
	scr_left_hand_chart_10();	
}

switch(room)
{
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 1
	//
	//				Basic 8 direction movement
	/**********************************************************/
	case (lvl_eight_dir_1):
	scr_eight_dir_1();
	break;
		
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 2
	//
	//				Add diagonals to 8 direction movement
	/**********************************************************/	
		
	case lvl_eight_dir_2:
	scr_eight_dir_2();	
	break;
		
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 3
	//
	//				Add Player snapping to point in movement
	//				direction to 8 direction movement
	/**********************************************************/	

	case lvl_eight_dir_3:
	scr_eight_dir_3();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 4
	//
	//				Add max turn rate and layer animating
	//				to new diredtion direction to 8 direction movement
	/**********************************************************/	

	case lvl_eight_dir_4:
	scr_eight_dir_4();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 5
	//
	//				Add gamepad controls to 8 direction movement
	/**********************************************************/	

	case lvl_eight_dir_5:
	scr_eight_dir_5();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 6
	//
	//				Limiting gamepad to keyboard controls
	//				in t8 direction movement
	/**********************************************************/	

	case lvl_eight_dir_6:
	scr_eight_dir_6();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 7
	//
	//				Add acceleration and friction to
	//				8 direction movement
	/**********************************************************/	

	case lvl_eight_dir_7:
	scr_eight_dir_7();
	break;
	
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 8
	//
	//				Adjust variables in interface to 8 
	//				direction mvoement
	/**********************************************************/	

	case lvl_eight_dir_8:
	scr_eight_dir_8();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 9
	//
	//				Add velocity to turn to 8 direction 
	//				movement
	/**********************************************************/	

	case lvl_eight_dir_9:
	scr_eight_dir_9();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 10
	//
	//				4 direction movement
	/**********************************************************/	

	case lvl_four_dir_1:
	scr_four_dir_1();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 11
	//
	//				Second to last key moves player in 
	//				4 direction movement
	/**********************************************************/	

	case lvl_four_dir_2:
	scr_four_dir_2();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 12
	//
	//				3 sprites face 3 directions with 
	//				4 direction movement
	/**********************************************************/	

	case lvl_four_dir_3:
	scr_four_dir_3();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 13
	//
	//				Mirror right sprite to point left
	//				4 direction movement
	/**********************************************************/	

	case lvl_four_dir_4:
	scr_four_dir_4();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 14
	//
	//				Add gamepad to 4 direction movement
	/**********************************************************/	

	case lvl_four_dir_5:
	scr_four_dir_5();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 15
	//
	//				Add acceleration and friction to
	//				4 player movement
	/**********************************************************/	

	case lvl_four_dir_6:
	scr_four_dir_6();
	break;
	
	/**********************************************************/
	//				TITLE AND RIGHT HAND SIDE CODE ROOM 16
	//
	//				Adjust variables in interface to 4
	//				direction mvoement
	/**********************************************************/	

	case lvl_four_dir_7:
	scr_four_dir_7();
	break;
	
}