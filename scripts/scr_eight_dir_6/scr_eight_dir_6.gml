draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 6");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "Evening out advantages of analogue controller over keyboard");

var code_y = 100;
var code_x = 680;
draw_set_halign(fa_left);
draw_set_font(fnt_code_small);

draw_set_color(c_white);
draw_text(code_x, code_y, "STEP EVENT");
draw_set_color(c_green);

var line_space = 11;
var s_wid = 0;
var line_1 = "";
var line_2 = "";
var line_3 = "";
var line_4 = "";
var line_5 = "";
var line_6 = "";
var line_7 = "";


code_y += 16;
s_wid = 0;
draw_set_color(c_green);
line_1 = "// Add the check for gamepad AFTER keyboard check above";
draw_set_color(c_green);
draw_text (code_x, code_y, line_1);

//if (x_axis == 0 && y_axis == 0)
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "if ";
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
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "{";
draw_text (code_x, code_y, line_1);

//if (global.gamepad[0] != noone)
code_y += line_space;
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
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   {";
draw_text (code_x, code_y, line_1);


//x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
//y_axis = gamepad_axis_value(global.gamepad[0], gp_axislv);
code_y += line_space;
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
	
	code_y += line_space;
	s_wid = 0;
}

//   }

draw_set_color(c_user_funct);
line_1 = "   }";
draw_text (code_x, code_y, line_1);

//if (room == lvl_eight_dir_6)
code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_user_funct)
line_1 = "   if ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white)
line_2 = "(";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_lime)
line_3 = "room ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_3 = "==  ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_user_var)
line_5 =  "lvl_eight_dir_6";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  ")";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);

//{
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   {";
draw_text (code_x, code_y, line_1);

code_y += line_space;
s_wid = 0;
draw_set_color(c_green);
line_1 = "      // To match keyboard limitation";
draw_text (code_x, code_y, line_1);

//if (x_axis != 0 || y_axis != 0)
code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_user_funct)
line_1 = "      if ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white)
line_2 = "(";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_var)
line_3 = "x_axis ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_3 = "!=  ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_internal_var)
line_5 =  "0 ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  "|| ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_user_var)
line_3 = "y_axis ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_3 = "!=  ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_internal_var)
line_5 =  "0 ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  ")";
draw_text (code_x + s_wid, code_y, line_5);

//{
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "      {";
draw_text (code_x, code_y, line_1);

code_y += line_space;
s_wid = 0;
draw_set_color(c_green);
line_1 = "      // Get angle of vector controller returns";
draw_text (code_x, code_y, line_1);


//var angle = arctan2(y_axis, x_axis) * -1;
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct)
line_1 = "         var ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var)
line_2 = "angle ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_white)
line_3 = "=  ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_user_var)
line_3 = "arctan2";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_5 =  "(";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_user_var)
line_5 =  "y_axis";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_3 = ", ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_user_var)
line_3 = "x_axis";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_5 =  ") * -";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_internal_var)
line_5 =  "1";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  ";";
draw_text (code_x + s_wid, code_y, line_5);


code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_green);
line_1 = "         // Split 360 into 8 quadrants and create a counter-clockwise return of 0 through 7";
draw_text (code_x, code_y, line_1);

//var octant = round( 8 * angle / (2*pi) + 8) % 8;
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct)
line_1 = "         var ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_user_var)
line_2 = "octant ";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_white)
line_3 = "=  ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_user_funct)
line_3 = "round";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_5 =  "(";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_internal_var)
line_5 =  "8";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_3 = " * ";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_user_var)
line_3 = "angle";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_5 =  " / (";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_internal_var)
line_5 =  "2";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  " * ";
draw_text (code_x + s_wid, code_y, line_5);
draw_set_color(c_internal_var)
line_5 =  "pi ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  ") + ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_internal_var)
line_5 =  "8";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  ") % ";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_internal_var)
line_5 =  "8";
draw_text (code_x + s_wid, code_y, line_5);
s_wid += string_width(line_5);
draw_set_color(c_white)
line_5 =  ";";
draw_text (code_x + s_wid, code_y, line_5);

code_y += line_space * 2;
s_wid = 0;
draw_set_color(c_green);
line_1 = "         // Set angle of sprite into its closest 45 degree slot";
draw_text (code_x, code_y, line_1);

//switch (octant)
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct)
line_1 = "         switch ";
draw_text (code_x + s_wid, code_y, line_1);
s_wid += string_width(line_1);
draw_set_color(c_white)
line_2 = "(";
draw_text (code_x + s_wid, code_y, line_2);
s_wid += string_width(line_2);
draw_set_color(c_user_var)
line_3 = "octant";
draw_text (code_x + s_wid, code_y, line_3);
s_wid += string_width(line_3);
draw_set_color(c_white)
line_3 = ")";
draw_text (code_x + s_wid, code_y, line_3);

//{
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         {";
draw_text (code_x, code_y, line_1);

/*case 0: // Right
x_axis = 1;
y_axis = 0;
break;
				
case 1: // Right & Up
x_axis = 1;
y_axis = -1;
break;
				
case 2: // Up
x_axis = 0;
y_axis = -1;
break;
				
case 3: // Left & Up
x_axis = -1;
y_axis = -1;
break;
				
case 4: // Left
x_axis = -1;
y_axis = 0;
break;
				
case 5: // Left & Down
x_axis = -1;
y_axis = 1;
break;
				
case 6: // Down
x_axis = 0;
y_axis = 1;
break;
				
case 7: // Right & Down
x_axis = 1;
y_axis = 1;*/

var right = " // Right";
var right_up = " // Right & Up";
var up = " // Up";
var left_up = " // Left & Up";
var left = " //Left";
var left_down = " //Left & Down";
var down = " // Down";
var right_down = " //Right & Down";

for(i = 0; i < 8; ++i)
{
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_user_funct)
	line_1 =  "            case ";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_internal_var);
	line_2 =  i;
	draw_text (code_x + s_wid, code_y, line_2);
	s_wid += string_width(line_2);
	draw_set_color(c_white);
	line_3 =  ": ";
	draw_text (code_x + s_wid, code_y, line_3);
	s_wid += string_width(line_3);
	draw_set_color(c_green);;
	switch(i)
	{
		case 0:
		draw_text (code_x + s_wid, code_y, right);
		break;
	
		case 1:
		draw_text (code_x + s_wid, code_y, right_up);
		break;
		
		case 2:
		draw_text (code_x + s_wid, code_y, up);
		break;
	
		case 3:
		draw_text (code_x + s_wid, code_y, left_up);
		break;
		
		case 4:
		draw_text (code_x + s_wid, code_y, left);
		break;
	
		case 5:
		draw_text (code_x + s_wid, code_y, left_down);
		break;
		
		case 6:
		draw_text (code_x + s_wid, code_y, down);
		break;
	
		case 7:
		draw_text (code_x + s_wid, code_y, right_down);
		break;
	}
	
	code_y += line_space;
	s_wid = 0;
	draw_set_color(c_user_var);
	line_4 =  "            y_axis ";
	draw_text (code_x + s_wid, code_y, line_4);
	s_wid += string_width(line_4);
	draw_set_color(c_white);
	line_5 =  "= ";
	draw_text (code_x + s_wid, code_y, line_5);
	s_wid += string_width(line_5);
	draw_set_color(c_internal_var);
	switch(i)
	{
		case 0:
		case 1:
		case 7:
		line_6 =  "1";
		break;
		
		case 2:
		case 6:
		line_6 = "0";
		break;
		
		case 3:
		case 4:
		case 5:
		line_6= "-1";
	}
		
	draw_text (code_x + s_wid, code_y, line_6);
	s_wid += string_width(line_6);
	draw_set_color(c_white);
	line_2 =  ";";
	draw_text (code_x + s_wid, code_y, line_2);
	
	code_y += line_space;
	s_wid = 0;
	
	draw_set_color(c_user_var);
	line_4 =  "            y_axis ";
	draw_text (code_x + s_wid, code_y, line_4);
	s_wid += string_width(line_4);
	draw_set_color(c_white);
	line_5 =  "= ";
	draw_text (code_x + s_wid, code_y, line_5);
	s_wid += string_width(line_5);
	draw_set_color(c_internal_var);
	switch(i)
	{
		case 5:
		case 6:
		case 7:
		line_6 =  "1";
		break;
		
		case 0:
		case 4:
		line_6 = "0";
		break;
		
		case 1:
		case 2:
		case 3:
		line_6= "-1";
	}
		
	draw_text (code_x + s_wid, code_y, line_6);
	s_wid += string_width(line_6);
	draw_set_color(c_white);
	line_2 =  ";";
	draw_text (code_x + s_wid, code_y, line_2);
	
	code_y += line_space;
	s_wid = 0;
	
	draw_set_color(c_user_funct);
	line_1 = "            break";
	draw_text (code_x + s_wid, code_y, line_1);
	s_wid += string_width(line_1);
	draw_set_color(c_white);
	line_2 =  ";";
	draw_text (code_x + s_wid, code_y, line_2);
	
	code_y += line_space;
	if (i == 3) 
	{
		code_y -= line_space * 20;
		code_x += 200;
	}
	
}

code_x -= 200;

//}
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "         }";
draw_text (code_x, code_y, line_1);

//}
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "      }";
draw_text (code_x, code_y, line_1);


//}
code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "   }";
draw_text (code_x, code_y, line_1);


code_y += line_space;
s_wid = 0;
draw_set_color(c_user_funct);
line_1 = "}";
draw_text (code_x, code_y, line_1);


		



