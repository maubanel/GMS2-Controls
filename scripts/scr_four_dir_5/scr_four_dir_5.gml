draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "4 Direction Walking Controls - Room 14");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "Controller mimicking keyboard");


var code_y = 100;
var code_x = 680;
var line_space = 13;
draw_set_halign(fa_left);
draw_set_font(fnt_code_small);

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

line_1 = "// Add right after keyboard checking";
draw_set_color(c_green);
draw_text (code_x + s_wid, code_y, line_1);
code_y += line_space ;
line_1 = "// Check for gamepad if no keyboard input";
draw_text (code_x + s_wid, code_y, line_1);
	
	
/*
if (x_axis == 0 && y_axis == 0)
*/
code_y += line_space;
draw_set_color(c_user_funct);
line_1 = "if ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "x_axis ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "== ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "&& ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "y_axis ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "== ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);

/*{
	if (global.gamepad[0] != noone)
	{
*/
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);

code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   if ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "global";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ".";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_array);
line_1 = "gamepad";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "[";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "] != ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "noone";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   {";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);

/*
		x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
		y_axis = gamepad_axis_value(global.gamepad[0], gp_axislv);		
*/

for (var i = 0; i < 2; ++i)
{
	if (i == 0) line_1 = "      x_axis ";
	else line_1 = "      y_axis ";
	
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_user_var);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "= ";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_user_funct);
	line_1 = "gamepad_axis_value";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "(";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_internal_var);
	line_1 = "global";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = ".";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_internal_array);
	line_1 = "gamepad";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "[";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_internal_var);
	line_1 = "0";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = "] ,";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_internal_var);
	line_1 = "gp_axisl";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	if (i == 0) line_1 = "h";
	else line_1 = "v";
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_1 = ");";
	draw_text(code_x + s_wid, code_y, line_1);
}

code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_green);
draw_text(code_x + s_wid, code_y, "      // To match keyboard limitation");
			
/*
		if (x_axis != 0 || y_axis != 0)
		{
*/

code_y += line_space;
s_wid = 0;
draw_set_color(c_user_var);
line_1 = "      if ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "x_axis ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "!= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "|| ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "y_axis ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "!= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "0 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "      {";
draw_text(code_x + s_wid, code_y, line_1);

/*
			var angle = arctan2(y_axis, x_axis) * -1;
*/
code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_green);
line_1 = "         // Get angle in degrees of controller (convert from vector to angle)";
draw_text(code_x + s_wid, code_y, line_1);

code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         var ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "angle ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "arctan2";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "y_axis";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ", ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "x_axis";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ") * -";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "1";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text(code_x + s_wid, code_y, line_1);


/*
			octant = round( 4 * angle / (2*pi) + 4) % 4;
*/
code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         var ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "octant ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "= ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_funct);
line_1 = "round ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "4 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "* ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "angle ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "/ (";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "2 ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "* ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "pi ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ") +  ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "4";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ") %  ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_internal_var);
line_1 = "4";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ";";
draw_text(code_x + s_wid, code_y, line_1);
/*
			switch (octant)
			{
*/
code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         switch ";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = "(";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var);
line_1 = "octant";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white);
line_1 = ")";
draw_text(code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         {";
draw_text(code_x + s_wid, code_y, line_1);


			
/*
				case 0: // Right
				x_axis = 1;
				y_axis = 0;
				break;
			
				case 1: // Up
				x_axis = 0;
				y_axis = -1;
				break;
				
				case 2: // Left
				x_axis = -1;
				y_axis = 0;
				break;

				case 3: // Down
				x_axis = 0;
				y_axis = 1;
				break;
*/
for (var i = 0; i < 4; ++i)
{
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_user_funct);
	line_1 = "            case ";
	draw_text(code_x + s_wid, code_y, line_1);	
	s_wid += string_width(line_1);
	draw_set_color(c_internal_var);
	draw_text(code_x + s_wid, code_y, string(i));
	s_wid += string_width(string(i));
	draw_set_color(c_white);
	line_1 = ":"
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_green);
	line_1 = "  // "
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	switch(i)
	{
		case 0:
		line_1 = "Right";
		break;
		
		case 1:
		line_1 = "Up";
		break;
		
		case 2:
		line_1 = "Left";
		break;
		
		case 3:
		line_1 = "Down";
		break;
	}
	draw_set_color(c_green);
	draw_text(code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	
	switch(i)
	{
		case 0:
		line_1 = 1;
		line_2 = 0;
		break;
		
		case 1:
		line_1 = 0;
		line_2 = -1;
		break;
		
		case 2:
		line_1 = -1;
		line_2 = 0;
		break;
		
		case 3:
		line_1 = 0;
		line_2 = 1;
		break;
	}
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_user_var);
	line_3 = "               x_axis ";
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
	draw_set_color(c_user_var);
	line_3 = "               y_axis ";
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
	draw_set_color(c_user_funct);
	line_3 = "               break";
	draw_text(code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_white);
	line_3 = ";";
	draw_text(code_x + s_wid, code_y, line_3);
	
	code_y += line_space;
	s_wid = 0;
}
				
				/*
			}
		}
	}
}
*/
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         }";
draw_text(code_x + s_wid, code_y, line_1);
code_y += line_space;
line_1 = "      }";
draw_text(code_x + s_wid, code_y, line_1);
code_y += line_space;
line_1 = "   }";
draw_text(code_x + s_wid, code_y, line_1);
code_y += line_space;
line_1 = "}";
draw_text(code_x + s_wid, code_y, line_1);