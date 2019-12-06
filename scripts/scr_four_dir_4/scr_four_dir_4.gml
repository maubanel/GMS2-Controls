draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "4 Direction Walking Controls - Room 13");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "image_xscale mirrors x-axis\nThe controller doesn't work");


var code_y = 180;
var code_x = 680;
var line_space = 15;
draw_set_halign(fa_left);
draw_set_font(fnt_code);

var s_wid = 0;
var line_1 = "";
var line_2 = "";
var line_3 = "";
	
draw_set_font(fnt_code);
draw_set_color(c_white);
s_wid = 0;
draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
code_y += line_space;

line_1 = "// Add to very bottom of step event";
draw_set_color(c_green);
draw_text (code_x + s_wid, code_y, line_1);
code_y += line_space ;
line_1 = "// Animate Player";
draw_text (code_x + s_wid, code_y, line_1);
	
	
/*
if (hspeed > 0)
{
	sprite_index = spr_player_right;
	image_xscale = 1;
}	
else if (hspeed < 0)
{
	sprite_index = spr_player_right;	
	image_xscale = -1;
}
else if (vspeed > 0)
{
	sprite_index = spr_player_down;	
}
else if (vspeed < 0)
{
	sprite_index = spr_player_up;	
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
		switch (i)
	{
		case 0:
		line_1 = "hspeed ";
		break;
			
		case 1:
		line_1 = "hspeed ";
		break;
		
		case 2:
		line_1 = "vspeed ";
		break;
		
		case 3:
		line_1 = "vspeed ";
		break;
	}
	draw_set_color(c_lime);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	switch(i)
	{
		case 0:
		case 2:
		line_2 = "> ";
		break;
		
		case 1:
		case 3:
		line_2 = "< ";
		
	}
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_internal_var);
	line_3 = "0";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_white);
	line_2 = ")";
	
	code_y += line_space;
	s_wid = 0;

	draw_set_color(c_white);
	line_2 = "{";
	draw_text(code_x + s_wid, code_y, line_2);
	
	code_y += line_space;
	s_wid = 0;
	line_1 = "   sprite_index ";
	draw_set_color(c_lime);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_2 = "= ";
	draw_text(code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	switch(i)
	{
		case 0:
		case 1:
		line_1 = "spr_player_right";
		break;
		
		case 2:
		line_1 = "spr_player_down";
		break;
		
		case 3:
		line_1 = "spr_player_up";
		break;
	}
	draw_set_color(c_lime);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = ";";
	draw_text(code_x + s_wid, code_y, line_1);
	
	if (i == 0 || i == 1)
	{
		code_y += line_space;
		s_wid = 0;
		draw_set_color(c_lime);
		line_2 = "   image_xscale ";
		draw_text(code_x + s_wid, code_y, line_2);
		s_wid += string_width(line_2);
		draw_set_color(c_white);
		line_2 = "= ";
		draw_text(code_x + s_wid, code_y, line_2);
		s_wid += string_width(line_2);
		draw_set_color(c_white);
		if (i == 1) 
		{
			line_1 = "-";
			draw_text(code_x + s_wid, code_y, line_1);
			s_wid += string_width(line_2);
		}
		draw_set_color(c_internal_var);
		line_1 = "1";
		draw_text(code_x + s_wid, code_y, line_1);
		s_wid += string_width(line_1);
		draw_set_color(c_white);
		line_2 = ";";
		draw_text(code_x + s_wid, code_y, line_2);
	}
	
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_white);
	line_2 = "}";
	draw_text(code_x + s_wid, code_y, line_2);
	
	code_y += line_space * 2;
	s_wid = 0;
	
}
