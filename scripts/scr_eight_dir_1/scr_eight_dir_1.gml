draw_set_font(fnt_title);
	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 1");
	draw_set_color(c_white);
	draw_set_font(fnt_reg);
	draw_text(room_width * .5, 67, "Get both axis from AWSD or Arrow Keys\nDiagonals faster than orthogonal movement");

	var code_y = 160;
	var code_x = 680;
	draw_set_halign(fa_left);
	
	draw_set_font(fnt_code);
	draw_set_color(c_white);
	draw_text(code_x, code_y, "CREATE EVENT");
	draw_set_color(c_green);
	code_y += 20;
	var line_1 = "// Speed in pixels per second";
	draw_text (code_x, code_y, line_1);
	code_y += 16;
	draw_set_color(c_user_var);
	var line_2 = "p_speed "
	draw_text (code_x, code_y, line_2);
	draw_set_color(c_white);
	var line_3 = "= ";
	var s_wid = string_width(line_2);
	draw_text(code_x + s_wid, code_y, line_3);
	draw_set_color(c_internal_var);
	var line_4 = "2 ";
	s_wid += string_width(line_3);
	draw_text(code_x + s_wid, code_y, line_4);
	draw_set_color(c_white);
	var line_5 = "* ";
	s_wid += string_width(line_4);
	draw_text(code_x + s_wid, code_y, line_5);
	draw_set_color(c_internal_var);
	var line_6 = "room_speed";
	s_wid += string_width(line_5);
	draw_text(code_x + s_wid, code_y, line_6);
	draw_set_color(c_white);
	var line_7 = ";";
	s_wid += string_width(line_6);
	draw_text(code_x + s_wid, code_y, line_7);
	
	code_y += 40;
	draw_set_color(c_white);
	draw_text(code_x, code_y, "STEP EVENT");
	draw_set_color(c_green);
	code_y += 20;
	line_1 = "// Get time since last frame in ms";
	draw_text (code_x, code_y, line_1);
	code_y += 16;
	draw_set_color(c_user_funct);
	line_2 = "var ";
	draw_text(code_x, code_y, line_2);
	draw_set_color(c_user_var);
	line_3 = "tick ";
	s_wid = string_width(line_2);
	draw_text(code_x + s_wid, code_y, line_3);
	draw_set_color(c_user_var);
	line_4 = "= ";
	s_wid += string_width(line_3);
	draw_text(code_x + s_wid, code_y, line_4);
	draw_set_color(c_lime);
	line_5 = "delta_time";
	s_wid += string_width(line_4);
	draw_text(code_x + s_wid, code_y, line_5);
	draw_set_color(c_white);
	line_6 = "/";
	s_wid += string_width(line_5);
	draw_text(code_x + s_wid, code_y, line_6);
	draw_set_color(c_internal_var);
	line_7 = "1000000";
	s_wid += string_width(line_6);
	draw_text(code_x + s_wid, code_y, line_7);
	draw_set_color(c_white);
	var line_8 = ";";
	s_wid += string_width(line_7);
	draw_text(code_x + s_wid, code_y, line_8);
	var line_9 = "";
	var line_10 = "";
	var line_11 = "";
	
	code_y += 32;
	line_1 = "// Get WASD & ARROW KEYS";
	draw_set_color(c_green);
	draw_text (code_x, code_y, line_1);
	
	
	
	var name;
	var arrow;
	var button;
	for (i = 0; i < 4; ++i)
	{

		switch (i)
		{
			case 0:
			arrow = "vk_right";
			button = "D";
			name = "right";
			break;
			
			case 1:
			arrow = "vk_left";
			button = "A";
			name = "left";
			break;
			
			case 2:
			arrow = "vk_down";
			button = "D";
			name = "down";
			break;
			
			default: 
			arrow = "vk_up";
			button = "U";
			name = "up";
			break;
		}
		code_y += 16;
		draw_set_color(c_user_funct);
		line_2 = "var ";
		draw_text(code_x, code_y, line_2);
		draw_set_color(c_user_var);
		line_3 = name + " ";
		s_wid = string_width(line_2)
		draw_text(code_x + s_wid, code_y, line_3);
		draw_set_color(c_user_var);
		line_4 = "= ";
		s_wid += string_width(line_3)
		draw_text(code_x + s_wid, code_y, line_4);
		draw_set_color(c_user_funct);
		line_5 = "keyboard_check";
		s_wid += string_width(line_4)
		draw_text(code_x + s_wid, code_y, line_5);
		draw_set_color(c_white);
		line_6 = "(";
		s_wid += string_width(line_5)
		draw_text(code_x + s_wid, code_y, line_6);
		draw_set_color(c_internal_var);
		line_7 = arrow;
		s_wid += string_width(line_6)
		draw_text(code_x + s_wid, code_y, line_7);
		draw_set_color(c_white);
		line_8 = ") || ";
		s_wid += string_width(line_7)
		draw_text(code_x + s_wid, code_y, line_8);
		draw_set_color(c_user_funct);
		s_wid += string_width(line_8)
		draw_text(code_x + s_wid, code_y, line_5);
		draw_set_color(c_white);
		s_wid += string_width(line_5)
		draw_text(code_x + s_wid, code_y, line_6);
		line_9 = "ord";
		draw_set_color(c_user_funct);
		s_wid += string_width(line_6)
		draw_text(code_x + s_wid, code_y, line_9);
		draw_set_color(c_white);
		s_wid += string_width(line_9);
		draw_text(code_x + s_wid, code_y, line_6);
		line_10 = "\"" + button + "\"";
		draw_set_color(c_yellow);
		s_wid += string_width(line_6);
		draw_text(code_x + s_wid, code_y, line_10);
		line_11 = "));";
		draw_set_color(c_white);
		s_wid += string_width(line_10);
		draw_text(code_x + s_wid, code_y, line_11);
		}
	
	code_y += 32;
	line_1 = "// Get Axis from keyboard";
	draw_set_color(c_green);
	draw_text (code_x, code_y, line_1);
	
	for (i = 0; i < 2; ++i)
	{
		switch (i)
		{
			case 0:
			arrow = "left";
			button = "right";
			name = "x_axis";
			break;
			
			default:
			arrow = "down";
			button = "up";
			name = "y_axis"
			break;
		}
		code_y += 16;
		draw_set_color(c_user_funct);
		line_2 = "var ";
		draw_text(code_x, code_y, line_2);
		draw_set_color(c_user_var);
		line_3 = name + " ";
		s_wid = string_width(line_2)
		draw_text(code_x + s_wid, code_y, line_3);
		draw_set_color(c_white);
		line_4 = "= ";
		s_wid += string_width(line_3);
		draw_text(code_x + s_wid, code_y, line_4);
		draw_set_color(c_user_var);
		s_wid += string_width(line_4)
		draw_text(code_x + s_wid, code_y, button);
		draw_set_color(c_white);
		line_5 = " - ";
		s_wid += string_width(button);
		draw_text(code_x + s_wid, code_y, line_5);
		draw_set_color(c_user_var);
		s_wid += string_width(line_5)
		draw_text(code_x + s_wid, code_y, arrow);
		draw_set_color(c_white);
		line_6 = ";";
		s_wid += string_width(arrow);
		draw_text(code_x + s_wid, code_y, line_6);
		
	}
		code_y += 32;
		line_1 = "// Calculate new speed based on axis";
		draw_set_color(c_green);
		draw_text (code_x, code_y, line_1);
		
			for (i = 0; i < 2; ++i)
	{
		switch (i)
		{
			case 0:
			button = "hspeed";
			name = "x_axis";
			break;
			
			default:
			button = "vspeed";
			name = "y_axis"
			break;
		}
		code_y += 16;
		s_wid = 0;
		draw_set_color(c_lime);
		line_3 = button + " ";
		draw_text(code_x + s_wid, code_y, line_3);
		draw_set_color(c_white);
		line_4 = "= ";
		s_wid += string_width(line_3);
		draw_text(code_x + s_wid, code_y, line_4);
		draw_set_color(c_user_var);
		s_wid += string_width(line_4)
		draw_text(code_x + s_wid, code_y, name);
		draw_set_color(c_white);
		line_5 = " * ";
		s_wid += string_width(name);
		draw_text(code_x + s_wid, code_y, line_5);
		draw_set_color(c_user_var);
		line_6 = "p_speed";
		s_wid += string_width(line_5)
		draw_text(code_x + s_wid, code_y, line_6);
		draw_set_color(c_white);
		line_5 = " * ";
		s_wid += string_width(line_6);
		draw_text(code_x + s_wid, code_y, line_5);
		draw_set_color(c_user_var);
		line_6 = "tick";
		s_wid += string_width(line_5)
		draw_text(code_x + s_wid, code_y, line_6);
		line_7 = ";";
		s_wid += string_width(line_6);
		draw_text(code_x + s_wid, code_y, line_7);
		
	}
		code_y += 32;
		line_1 = "// keep player on screen";
		draw_set_color(c_green);
		draw_text (code_x, code_y, line_1);
		code_y +=16;
		draw_set_color(c_user_var);
		line_1 = "move_wrap";
		draw_text (code_x, code_y, line_1);
		draw_set_color(c_white);
		line_2 = "(";
		s_wid = string_width(line_1);
		draw_text(code_x + s_wid, code_y, line_2);
		s_wid += string_width(line_2);
		repeat(2)
		{
			draw_set_color(c_internal_var);
			line_3 = "true";
			draw_text(code_x + s_wid, code_y, line_3);
			draw_set_color(c_white);
			line_4 = ", ";
			s_wid += string_width(line_3);
			draw_text(code_x + s_wid, code_y, line_4);
			s_wid += string_width(line_4);
		}
		draw_set_color(c_user_funct);
		line_5 = "sprite_get_width";
		draw_text(code_x + s_wid, code_y, line_5);
		s_wid += string_width(line_5);
		draw_set_color(c_white);
		draw_text(code_x + s_wid, code_y, line_2);
		line_6 = "spr_player_1";
		s_wid += string_width(line_2);
		draw_set_color(c_internal_var);
		draw_text(code_x + s_wid, code_y, line_6);
		line_11 = "));";
		draw_set_color(c_white);
		s_wid += string_width(line_6);
		draw_text(code_x + s_wid, code_y, line_11);