draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 2");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 87, "speed = hspeed + vspeed\nNormalize speed to account for diagonals\nPlayer not facing direction they are moving in");

var line_space = 18;
var s_wid = 0;
var line_1 = "";
var line_2 = "";
var line_3 = "";
var line_4 = "";
var line_5 = "";
var line_6 = "";
var line_7 = "";
var line_8 = "";
var code_y = 160;
var code_x = 680;
		
draw_set_halign(fa_left);
draw_set_font(fnt_code);		
draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
		
code_y += line_space * 2;
line_1 = "// Calculate new speed based on axis";
draw_set_color(c_green);
draw_text (code_x + s_wid, code_y, line_1);
		
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
	draw_set_color(c_user_funct);
	line_2 = "var ";
	draw_text (code_x + s_wid, code_y, line_2);
	draw_set_color(c_lime);
	line_3 = button + " ";
	s_wid += string_width(line_2);
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


draw_set_color(c_green);
code_y += line_space * 2;
		
line_1 = "// normalize diagonals whose magnitude is greater than 1";
draw_text (code_x, code_y, line_1);
		
//		if (speed  > p_speed * tick)
code_y += line_space;
draw_set_color(c_user_funct);
line_2 = "if";
draw_text(code_x, code_y, line_2);
draw_set_color(c_white);
line_3 = "(";
s_wid = string_width(line_2);
draw_text(code_x + s_wid, code_y, line_3);
draw_set_color(c_lime);
line_4 = "speed ";
s_wid += string_width(line_3);
draw_text(code_x + s_wid, code_y, line_4);
draw_set_color(c_white);
line_5 = " > ";
s_wid += string_width(line_4);
draw_text(code_x + s_wid, code_y, line_5);
draw_set_color(c_user_var);
line_6 = "p_speed ";
s_wid += string_width(line_5);

draw_text(code_x + s_wid, code_y, line_6);
draw_set_color(c_white);
line_7 = "* ";
s_wid += string_width(line_6);
draw_text(code_x + s_wid, code_y, line_7);
s_wid += string_width(line_7);
draw_set_color(c_user_var);
line_8 = "tick";
draw_text(code_x + s_wid, code_y, line_8);
s_wid += string_width(line_8);
draw_set_color(c_white);
var line_8 = ")";
draw_text(code_x + s_wid, code_y, line_8);
		
//{
code_y += line_space;
s_wid = 0;
line_1 = "{";
draw_set_color(c_white);
draw_text(code_x + s_wid, code_y, line_1);	

//	speed = p_speed * tick;

code_y += line_space;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "   speed";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
var line_2 = " = ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_var);
var line_3 = "p_speed";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white);
var line_4 = " * ";
draw_text (code_x + s_wid, code_y, line_4);
s_wid += string_width(line_4);
draw_set_color(c_user_var);
var line_5 = "tick";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white);
var line_5 = ";";
draw_text (code_x + s_wid, code_y, line_5);

//} 
code_y += line_space;
s_wid = 0;
line_1 = "}";
draw_set_color(c_white);
draw_text (code_x + s_wid, code_y, line_1);