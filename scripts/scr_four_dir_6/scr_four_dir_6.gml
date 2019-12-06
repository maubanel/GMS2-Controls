draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "4 Direction Walking Controls - Room 15");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "Add max acceleration and friction");

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

//p_acc = .2 * room_speed;
draw_set_color(c_white);
draw_text(code_x, code_y, "CREATE EVENT");
draw_set_color(c_green);
code_y += line_space;
line_1 = "// Max Acceleration";
draw_text (code_x, code_y, line_1);
	
code_y += line_space;
draw_set_color(c_user_var);
line_2 = "p_acc "
draw_text (code_x, code_y, line_2);
draw_set_color(c_white);
line_3 = "= .";
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
	
	
//p_friction = .1 * room_speed;

draw_set_color(c_green);
code_y += line_space * 2;
line_1 = "// Friction";
draw_text (code_x, code_y, line_1);
	
code_y += line_space;
draw_set_color(c_user_var);
line_2 = "p_friction "
draw_text (code_x, code_y, line_2);
draw_set_color(c_white);
line_3 = "= .";
s_wid = string_width(line_2);
draw_text(code_x + s_wid, code_y, line_3);
draw_set_color(c_internal_var);
line_4 = "1 ";
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


code_y += line_space * 3;
draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
draw_set_color(c_green);



code_y += line_space;
line_1 = "// Calculate new speed based on axis";
draw_text (code_x, code_y, line_1);

code_y += line_space;
s_wid = 0;

//hspeed += x_axis * p_acc * tick;
//vspeed += y_axis * p_acc * tick;
for (i = 0; i < 2; ++i)
{
	draw_set_color(c_lime);
	if (i == 0) line_1 = "hspeed ";
	else if (i == 1) line_1 = "vspeed ";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white)
	line_1 = "+= ";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_user_var)
	if (i == 0) line_2 = "x-axis ";
	else if (i == 1) line_2 = "y_axis ";
	draw_text (code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_white);
	line_3 = "*  ";
	draw_text (code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_user_var);
	line_4 = "p_acc ";
	draw_text (code_x + s_wid, code_y, line_4);
	s_wid += string_width(line_4);
	draw_set_color(c_white);
	draw_text (code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_user_var);
	line_5 = "tick";
	draw_text (code_x + s_wid, code_y, line_5);
	s_wid += string_width(line_5);
	draw_set_color(c_white)
	line_6 = ";";
	draw_text (code_x + s_wid, code_y, line_6);
	code_y += line_space;
	s_wid = 0;
}


//speed -= p_friction * tick;
draw_set_color(c_green);
code_y += line_space;
line_1 = "// Friction";
draw_text (code_x + s_wid, code_y, line_1);
code_y += line_space;
s_wid = 0;

draw_set_color(c_lime);
line_1 = "speed ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_2 = "-= ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_var);
line_3 = "p_friction ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white);
line_4 = "* ";
draw_text (code_x + s_wid, code_y, line_4);
s_wid += string_width(line_4);
draw_set_color(c_user_var);
line_5 = "tick";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white);
line_5 = ";";
draw_text (code_x + s_wid, code_y, line_5);


draw_set_color(c_green);
code_y += line_space *2;
s_wid = 0;
line_1 = "// Normalize diagonals whose magnitude is ";
draw_text (code_x + s_wid, code_y, line_1);
code_y += line_space;
line_1 = "//     greater than 1 as well as clamp friction and max speed";
draw_text (code_x + s_wid, code_y, line_1);

//speed = clamp(speed, 0, p_speed * tick); 
code_y += line_space;
s_wid = 0;
draw_set_color(c_lime);
line_1 = "speed ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_2 = "= ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_funct);
line_3 = "clamp ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white);
line_4 = "(";
draw_text (code_x + s_wid, code_y, line_4);
s_wid += string_width(line_4);
draw_set_color(c_lime);
line_5 = "speed ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white);
line_6 = ", ";
draw_text (code_x + s_wid, code_y, line_6);
s_wid += string_width(line_6);
draw_set_color(c_internal_var);
line_7 = "0";
draw_text (code_x + s_wid, code_y, line_7);
s_wid += string_width(line_7);
draw_set_color(c_white);
line_1 = ", ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "p_speed ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_2 = "* ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_var);
line_3 = "tick";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white);
line_4 = ");";
draw_text (code_x + s_wid, code_y, line_4);

