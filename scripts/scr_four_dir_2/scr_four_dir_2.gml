draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "4 Direction Walking Controls - Room 11");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "4 directions with second last key still controlling direction\nThe player is not facing where they are moving");


var code_y = 180;
var code_x = 680;
var line_space = 16;
draw_set_halign(fa_left);
draw_set_font(fnt_code);

var s_wid = 0;
var line_1 = "";
var line_2 = "";
var line_3 = "";
var line_4 = "";
var line_5 = "";
var line_6 = "";
var line_7 = "";
	
draw_set_font(fnt_code);
draw_set_color(c_white);
s_wid = 0;
draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
code_y += line_space;

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
for (i = 3; i < 4; ++i)
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
	line_2 = ")";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	if (i == 3)
	{
		draw_set_color(c_white);
		line_2 = ")";
		draw_text(code_x + s_wid, code_y, line_2);
	}
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
	
/*
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
	
}*/
for (i = 0; i < 4; ++i)
{

	line_1 = "else if ";
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
	line_2 = ") || ";
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
	line_2 = "))";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_lime);
	line_3 = "keyboard_lastkey ";
	
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