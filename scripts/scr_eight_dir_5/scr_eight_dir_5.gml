draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 5");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "Adding Gamepad Controls on top of Keyboard\nGamepad can move at any angle and speed, has unfair advantage over keyboard");

var code_y = 160;
var code_x = 680;
draw_set_halign(fa_left);
	
draw_set_font(fnt_code);
draw_set_color(c_green);
draw_text(code_x, code_y, "// Include obj_gamepad in room othewise below code will not work");

code_y += 36;
draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
draw_set_color(c_green);

code_y += 16;
var s_wid = 0;
var line_1 = "";
var line_2 = "";
var line_3 = "";
var line_4 = "";
var line_5 = "";
var line_6 = "";
var line_7 = "";

draw_set_color(c_green);
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
s_wid = 0;
draw_set_color(c_green);
line_1 = "// Add the check for gamepad AFTER keyboard check above";
draw_set_color(c_green);
draw_text (code_x, code_y, line_1);

//if (x_axis == 0 && y_axis == 0)
code_y += 16;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "if ";
draw_set_color(c_green);
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_2 = "(";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_var);
line_3 = "x_axis ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white);
line_4 = "== ";
draw_text (code_x + s_wid, code_y, line_4);
s_wid += string_width(line_4);
draw_set_color(c_internal_var);
line_5 = "0 ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white);
line_6 = "&& ";
draw_text (code_x + s_wid, code_y, line_6);
s_wid += string_width(line_6);
draw_set_color(c_user_var);
line_7 = "y_axis ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_7);
draw_set_color(c_white);
line_1 = "== ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_2 = "0 ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_white);
line_3 = ");";
draw_text (code_x + s_wid, code_y, line_3);

//{
code_y += 16;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text (code_x, code_y, line_1);

//if (global.gamepad[0] != noone)
code_y += 16;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   if ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_2 = "(";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_internal_var);
line_3 = "global";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white);
line_4 = ".";
draw_text (code_x + s_wid, code_y, line_4);
s_wid += string_width(line_4);
draw_set_color(c_internal_array);
line_5 = "gamepad";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white);
line_6 = "[";
draw_text (code_x + s_wid, code_y, line_6);
s_wid += string_width(line_6);
draw_set_color(c_internal_var);
line_7 = "0";
draw_text (code_x + s_wid, code_y, line_7);
s_wid += string_width(line_7);
draw_set_color(c_white);
line_1 = "] != ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_2 = "noone";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_white);
line_3 = ")";
draw_text (code_x + s_wid, code_y, line_3);

//	{
code_y += 16;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   {";
draw_text (code_x, code_y, line_1);


//x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
//y_axis = gamepad_axis_value(global.gamepad[0], gp_axislv);
code_y += 16;
s_wid = 0;
for (i = 0; i < 2; ++i)
{
	switch(i)
	{
		case 0:
		line_1 = "      x_axis";
		line_7 = "gp_axislh";
		break;
		
		case 1:
		line_1 = "      y_axis";
		line_7 = "gp_axislv";
		break;
	}
	draw_set_color(c_internal_var);
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_2 = " = ";
	draw_text (code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_user_funct);
	line_3 = "gamepad_axis_value";
	draw_text (code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_user_funct);
	line_4 = "(";
	draw_text (code_x + s_wid, code_y, line_4);
	s_wid += string_width(line_4);
	draw_set_color(c_internal_var);
	line_5 = "global";
	draw_text (code_x + s_wid, code_y, line_5);
	s_wid += string_width(line_5);
	draw_set_color(c_white);
	line_6 = ".";
	draw_text (code_x + s_wid, code_y, line_6);
	s_wid += string_width(line_6);
	draw_set_color(c_internal_array);
	line_2 = "gamepad";
	draw_text (code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_white);
	line_3 = "[";
	draw_text (code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_internal_var);
	line_4 = "0";
	draw_text (code_x + s_wid, code_y, line_4);
	s_wid += string_width(line_4);
	draw_set_color(c_white);
	line_5 = "], ";
	draw_text (code_x + s_wid, code_y, line_5);
	s_wid += string_width(line_5);
	draw_set_color(c_internal_var);
	draw_text (code_x + s_wid, code_y, line_7);
	s_wid += string_width(line_7);
	draw_set_color(c_white);
	draw_text (code_x + s_wid, code_y, ");");
	
	code_y += 16;
	s_wid = 0;
}

//   }

draw_set_color(c_user_funct);
line_1 = "   }";
draw_text (code_x, code_y, line_1);

//}
code_y += 16;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text (code_x, code_y, line_1);

		



