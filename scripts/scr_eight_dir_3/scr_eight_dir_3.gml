
		draw_set_font(fnt_title);
		draw_set_color(c_aqua);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 3");
		draw_set_color(c_white);
		draw_set_font(fnt_reg);
		draw_text(room_width * .5, 67, "Player points in in direction the object is moving in\nAnimation snaps to new position");

		draw_set_font(fnt_code);
		var line_height = 18;;
		var code_y = 160;
		var code_x = 680;
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		draw_text(code_x, code_y, "STEP EVENT");
		draw_set_color(c_green);
		code_y += 16;
		draw_text(code_x, code_y, "// Points player in direction of movement direction of object");
		
		code_y += line_height;
		draw_set_color(c_user_funct);
		line_1 = "if ";
		draw_text(code_x, code_y,line_1);
		s_wid = string_width(line_1);
		
		draw_set_color(c_white);
		line_1 = "(";
		draw_text(code_x + s_wid, code_y,line_1);
		s_wid += string_width(line_1);
		
		draw_set_color(c_lime);
		line_1 = "speed ";
		draw_text(code_x + s_wid, code_y,line_1);
		s_wid += string_width(line_1);
		
		draw_set_color(c_white);
		line_1 = "!= ";
		draw_text(code_x + s_wid, code_y,line_1);
		s_wid += string_width(line_1);
		
		draw_set_color(c_internal_var);
		line_1 = "0";
		draw_text(code_x + s_wid, code_y,line_1);
		s_wid += string_width(line_1);
		
		draw_set_color(c_white);
		line_1 = ")";
		draw_text(code_x + s_wid, code_y,line_1);
		s_wid += string_width(line_1);
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_user_funct);
		line_1 = "{";
		draw_text(code_x, code_y,line_1);
		s_wid += string_width(line_1);
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_lime);
		line_1 = "   image_angle";
		draw_text(code_x + s_wid, code_y,line_1);
		
		s_wid += string_width(line_1);
		draw_set_color(c_white);
		line_2 = " = ";
		draw_text(code_x + s_wid, code_y,line_2);
		
		s_wid += string_width(line_2);
		draw_set_color(c_lime);
		line_3 = "direction";
		draw_text(code_x + s_wid, code_y,line_3);
		
		s_wid += string_width(line_3);
		draw_set_color(c_white);
		line_4 = ";";
		draw_text(code_x + s_wid, code_y,line_4);
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_lime);
		line_1 = "   sprite_index";
		draw_text(code_x + s_wid, code_y,line_1);
		
		s_wid += string_width(line_1);
		draw_set_color(c_white);
		line_2 = " = ";
		draw_text(code_x + s_wid, code_y,line_2);
		
		s_wid += string_width(line_2);
		draw_set_color(c_internal_var);
		line_3 = "spr_top_down_symmetric";
		draw_text(code_x + s_wid, code_y,line_3);
		
		s_wid += string_width(line_3);
		draw_set_color(c_white);
		line_4 = ";";
		draw_text(code_x + s_wid, code_y,line_4);
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_user_funct);
		line_1 = "}";
		draw_text(code_x, code_y,line_1);
		
		code_y += line_height * 2;
		s_wid = 0;
		draw_set_color(c_white);
		line_4 = "else";
		draw_text(code_x + s_wid, code_y,line_4);
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_user_funct);
		line_1 = "{";
		draw_text(code_x, code_y,line_1);
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_lime);
		line_1 = "   sprite_index";
		draw_text(code_x + s_wid, code_y,line_1);
		
		s_wid += string_width(line_1);
		draw_set_color(c_white);
		line_2 = " = ";
		draw_text(code_x + s_wid, code_y,line_2);
		
		s_wid += string_width(line_2);
		draw_set_color(c_internal_var);
		line_3 = "spr_top_down_symmetric_idle";
		draw_text(code_x + s_wid, code_y,line_3);
		
		s_wid += string_width(line_3);
		draw_set_color(c_white);
		line_4 = ";";
		draw_text(code_x + s_wid, code_y,line_4);
		
		
		code_y += line_height;
		s_wid = 0;
		draw_set_color(c_user_funct);
		line_1 = "}";
		draw_text(code_x, code_y,line_1);