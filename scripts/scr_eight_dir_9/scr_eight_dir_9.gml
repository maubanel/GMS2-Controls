draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 9");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "Add displacement on turn");

var code_y = 186;
var code_x = 780;
var line_space = 16;
draw_set_halign(fa_right);
draw_set_font(fnt_reg);

var s_wid = 0;
var line_1 = "";


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_green);
line_1 = "// Player direction animates to new position";
draw_text (code_x, code_y, line_1);
code_y += line_space;
line_1 = "// Update player direction";
draw_text (code_x, code_y, line_1);
code_y += line_space;
draw_set_color(c_gray);
draw_text(code_x, code_y, 

@"if (speed != 0) // Only update direction if moving
{
    if (image_angle != direction) // Animate between if there is a change
    { 
        // Get angle difference in degrees between -180 and 180 in angle change
        var new_ang = angle_difference(image_angle, direction);

        // Takes the smaller of the two the anlge or the maximum turn_rate
        //       and multiplies by the the sign of the angle
        image_angle -= min(abs(new_ang), turn_rate * tick) * sign(new_ang);
        // Adds new angle and keeps between 0 and 359
        image_angle = image_angle mod(360);
    }");
	code_y += line_space * 16;
	line_1 = "    direction ";
	draw_set_color(c_lime);
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "= ";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_lime);
	line_1 = "image_angle";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = ";";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	//direction = image_angle;
//}

code_y += line_space;
draw_set_color(c_gray);
draw_text(code_x, code_y, "}");