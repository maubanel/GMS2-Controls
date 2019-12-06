draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "4 Direction Walking Controls - Room 10");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "4 directions only\nThe player only moves with the last key pressed");


var code_y = 120;
var code_x = 680;
var line_space = 12;
draw_set_halign(fa_left);
draw_set_font(fnt_code_small);

var s_wid = 0;
var line_1 = "";
var line_2 = "";
var line_3 = "";
var line_4 = "";
var line_5 = "";
var line_6 = "";
var line_7 = "";
	
draw_set_color(c_white);
draw_text(code_x, code_y, "CREATE EVENT");
draw_set_color(c_green);
code_y += line_space;
line_1 = "// Speed in pixels per second";
draw_text (code_x, code_y, line_1);
code_y += 16;
draw_set_color(c_user_var);
line_2 = "p_speed "
draw_text (code_x, code_y, line_2);
draw_set_color(c_white);
line_3 = "= ";
s_wid = string_width(line_2);
draw_text(code_x + s_wid, code_y, line_3);
draw_set_color(c_internal_var);
line_4 = "2 ";
s_wid += string_width(line_3);
draw_text(code_x + s_wid, code_y, line_4);
draw_set_color(c_white);
line_5 = "* ";
s_wid += string_width(line_4);
draw_text(code_x + s_wid, code_y, line_5);
draw_set_color(c_internal_var);
line_6 = "room_speed";
s_wid += string_width(line_5);
draw_text(code_x + s_wid, code_y, line_6);
draw_set_color(c_white);
line_7 = ";";
s_wid += string_width(line_6);
draw_text(code_x + s_wid, code_y, line_7);
	
code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
draw_set_color(c_green);
code_y += line_space;
line_1 = "// Get time since last frame in ms";
draw_text (code_x, code_y, line_1);
code_y += 16;
draw_set_color(c_user_funct);
line_2 = "var ";
draw_text(code_x, code_y, line_2);
draw_set_color(c_user_var);
line_3 = "tick ";
s_wid += string_width(line_2);
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
line_8 = ";";
s_wid += string_width(line_7);
draw_text(code_x + s_wid, code_y, line_8);


code_y += line_space * 2;
s_wid = 0;
line_1 = "// Set Axis to Zero";
draw_set_color(c_green);
draw_text (code_x + s_wid, code_y, line_1);


//var x_axis = 0;
//var y_axis = 0;
code_y += line_space;
s_wid = 0;
line_1 = "x_axis ";
line_2 = "y_axis ";

for (i = 0; i < 2; ++i)
{
	draw_set_color(c_user_funct);
	line_3 = "var ";
	draw_text (code_x + s_wid, code_y, line_3);	
	s_wid += string_width(line_3);
	draw_set_color(c_user_var);
	if (i == 0) 
	{
		draw_text (code_x + s_wid, code_y, line_1);	
		s_wid += string_width(line_1);
	}
	else
	{
		draw_text (code_x + s_wid, code_y, line_2);	
		s_wid += string_width(line_2);
	}
	draw_set_color(c_white);
	line_4 = "= ";
	draw_text (code_x + s_wid, code_y, line_4);	
	s_wid += string_width(line_4);
	draw_set_color(c_internal_var);
	line_5 = "0";
	draw_text (code_x + s_wid, code_y, line_5);	
	s_wid += string_width(line_5);
	draw_set_color(c_white);
	line_6 = ";";
	draw_text (code_x + s_wid, code_y, line_6);	
	
	code_y += line_space;
	s_wid = 0;
}

	
	

code_y += line_space * 2;
s_wid = 0;
line_1 = "// Check if last button pressed && key is still pressed";
draw_set_color(c_green);
draw_text (code_x + s_wid, code_y, line_1);
code_y += line_space;
line_1 = "//     to then move in that direction";
draw_text (code_x + s_wid, code_y, line_1);
	
	
/*
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
*/


code_y += line_space;
s_wid = 0;
for (i = 0; i < 4; ++i)
{

	switch (i)
	{
		case 0:
		line_1 = "if ";
		break;
			
		case 1:
		case 2:
		case 3:
		line_1 = "else if ";
		break;
	}
	draw_set_color(c_user_funct);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "(";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_user_funct);
	line_1 = "keyboard_check";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "(";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
		switch (i)
	{
		case 0:
		line_1 = "vk_right";
		break;
			
		case 1:
		line_1 = "vk_left";
		break;
		
		case 2:
		line_1 = "vk_down";
		break;
		
		case 3:
		line_1 = "vk_up";
		break;
	}
	draw_set_color(c_internal_var);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_2 = ") && ";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_lime);
	line_3 = "keyboard_lastkey ";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_white);
	line_2 = "== ";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_internal_var);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_white);
	line_2 = "     || ";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_user_funct);
	line_1 = "keyboard_check";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "(";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_user_funct);
	line_1 = "ord";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "(";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	
	switch (i)
	{
		case 0:
		line_1 = "\"D\"";
		break;
			
		case 1:
		line_1 = "\"A\"";
		break;
		
		case 2:
		line_1 = "\"S\"";
		break;
		
		case 3:
		line_1 = "\"W\"";
		break;
	}
	draw_set_color(c_yellow);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_2 = ")) && ";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_lime);
	line_3 = "keyboard_lastkey ";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_white);
	line_2 = "== ";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_internal_var);
	line_2 = "ord"
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_white);
	line_2 = "(";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_internal_var);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_2 = "))";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_white);
	line_2 = "{";
	draw_text(code_x + s_wid, code_y, line_2);
	
	
	code_y += line_space;
	s_wid = 0;
	
	switch (i)
	{
		case 0:
		line_1 = "1";
		line_2 = "0";
		break;
			
		case 1:
		line_1 = "-1";
		line_2 = "0";
		break;
		
		case 2:
		line_1 = "0";
		line_2 = "1";
		break;
		
		case 3:
		line_1 = "0";
		line_2 = "-1";
		break;
	}
	
	draw_set_color(c_internal_var);
	line_3 = "   x_axis";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_white);
	line_3 = "= ";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_internal_var);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_3 = ";";
	draw_text(code_x + s_wid, code_y, line_3);
	
	code_y += line_space;
	s_wid = 0;
	
	draw_set_color(c_internal_var);
	line_3 = "   y_axis";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_white);
	line_3 = "= ";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_internal_var);
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_white);
	line_3 = ";";
	draw_text(code_x + s_wid, code_y, line_3);
	
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_white);
	line_2 = "}";
	draw_text(code_x + s_wid, code_y, line_2);
	
	
	code_y += line_space;
	s_wid = 0;
		
}
	

code_y += line_space;
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
	code_y += line_space;
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
s_wid += string_width(line_6);
line_6 = "));";
draw_set_color(c_white);
draw_text(code_x + s_wid, code_y, line_6);


	