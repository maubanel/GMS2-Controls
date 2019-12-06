draw_set_halign(fa_right);
draw_set_font(fnt_small);
draw_set_color(c_white);
var offset = 28;
var initial_y_pos = 160;
var y_pos = initial_y_pos;
var l_margin_x = 10;
var text_offset = 160;
var first_column_x = 6 +  text_offset + l_margin_x;
var second_column_x = 150 + first_column_x;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5 , "Last Key R || Right Arrow");
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key L || Left Arrow");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key D || Down Arrow");
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key U || Up Arrow");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key D || D Key");
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key A || A Key");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key S || S Key");
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "Last Key W || W Key");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "gpad x_axis");
		
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "gpad y_axis");	
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "x_axis");
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "y_axis");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "hspeed");
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "vspeed");
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "speed");
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "sprite_index");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_xscale");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "octant");
	

/*
if (room == lvl_eight_dir_5 || room == lvl_eight_dir_6 || room == lvl_eight_dir_7)
{
	y_pos += offset;
	draw_line(l_margin_x, y_pos, second_column_x, y_pos);
	draw_text(l_margin_x + text_offset, y_pos - offset * .5, "gpad x_axis");
		
	y_pos += offset;
	draw_line(l_margin_x, y_pos, second_column_x, y_pos);
	draw_text(l_margin_x + text_offset, y_pos - offset * .5, "gpad y_axis");	
}

if (room == lvl_eight_dir_6 || room == lvl_eight_dir_7)
{
	y_pos += offset;
	draw_line(l_margin_x, y_pos, second_column_x, y_pos);
	draw_text(l_margin_x + text_offset, y_pos - offset * .5, "octant");	
}
*/

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);
		
draw_set_color(c_green);

if (keyboard_check(vk_right) && keyboard_lastkey == vk_right)
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 0) + 1, second_column_x - 1,initial_y_pos + (offset * 1) - 1, false );
}	
	
else if (keyboard_check(vk_left) && keyboard_lastkey == vk_left)
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 1) + 1, second_column_x - 1,initial_y_pos + (offset * 2) - 1, false );
}	
	
else if (keyboard_check(vk_down) && keyboard_key == vk_down)
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 2) + 1, second_column_x - 1,initial_y_pos + (offset * 3) - 1, false );
}	
	
else if (keyboard_check(vk_up) && keyboard_lastkey == vk_up)
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 3) + 1, second_column_x - 1,initial_y_pos + (offset * 4) - 1, false );
}	
	
else if (keyboard_check(ord("D")) && keyboard_lastkey == ord("D"))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 4) + 1, second_column_x - 1,initial_y_pos + (offset * 5) - 1, false );
}	

	
else if (keyboard_check(ord("A")) && keyboard_lastkey == ord("A"))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 5) + 1, second_column_x - 1,initial_y_pos + (offset * 6) - 1, false );
}	

else if (keyboard_check(ord("S")) && keyboard_lastkey == ord("S"))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 6) + 1, second_column_x - 1,initial_y_pos + (offset * 7) - 1, false );
}	

else if (keyboard_check(ord("W")) && keyboard_lastkey == ord("W"))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 7) + 1, second_column_x - 1,initial_y_pos + (offset * 8) - 1, false );
}	


else if (keyboard_check(vk_right))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 0) + 1, second_column_x - 1,initial_y_pos + (offset * 1) - 1, false );
}	
	
else if (keyboard_check(vk_left))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 1) + 1, second_column_x - 1,initial_y_pos + (offset * 2) - 1, false );
}	
	
else if (keyboard_check(vk_down))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 2) + 1, second_column_x - 1,initial_y_pos + (offset * 3) - 1, false );
}	
	
else if (keyboard_check(vk_up))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 3) + 1, second_column_x - 1,initial_y_pos + (offset * 4) - 1, false );
}	
	
else if (keyboard_check(ord("D")))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 4) + 1, second_column_x - 1,initial_y_pos + (offset * 5) - 1, false );
}	

	
else if (keyboard_check(ord("A")))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 5) + 1, second_column_x - 1,initial_y_pos + (offset * 6) - 1, false );
}	

else if (keyboard_check(ord("S")))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 6) + 1, second_column_x - 1,initial_y_pos + (offset * 7) - 1, false );
}	

else if (keyboard_check(ord("W")))
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 7) + 1, second_column_x - 1,initial_y_pos + (offset * 8) - 1, false );
}	
	
if (gamepad_axis_value(global.gamepad[0], gp_axislh) != 0 && (obj_player_4_dir_6.octant == 0 || obj_player_4_dir_6.octant == 2) )
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 8) + 1, second_column_x - 1,initial_y_pos + (offset * 9) - 1, false );
}	

if (gamepad_axis_value(global.gamepad[0], gp_axislv) != 0  &&( obj_player_4_dir_6.octant == 1 || obj_player_4_dir_6.octant == 3) )
{

	draw_rectangle(first_column_x + 1, initial_y_pos + (offset * 9) + 1, second_column_x - 1,initial_y_pos + (offset * 10) - 1, false );
}	

draw_set_halign(fa_center);
draw_set_color(c_white);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , keyboard_check(vk_right));

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 1.5) , keyboard_check(vk_left));
		
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 2.5) , keyboard_check(vk_down));

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 3.5) , keyboard_check(vk_up));
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 4.5) , keyboard_check(ord("D")));

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 5.5) , keyboard_check(ord("A")));
		
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 6.5) , keyboard_check(ord("S")));

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 7.5) , keyboard_check(ord("W")));

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 8.5) , gamepad_axis_value(global.gamepad[0], gp_axislh));
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 9.5), gamepad_axis_value(global.gamepad[0], gp_axislv));

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 10.5) , obj_player_4_dir_6.x_axis);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 11.5), obj_player_4_dir_6.y_axis);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 12.5), obj_player_4_dir_6.hspeed);
		
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 13.5), obj_player_4_dir_6.vspeed);
			
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 14.5), obj_player_4_dir_6.speed);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 15.5), sprite_get_name(obj_player_4_dir_6.sprite_index));
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 16.5), obj_player_4_dir_6.image_xscale);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 17.5), obj_player_4_dir_6.octant);

/*if (room == lvl_eight_dir_5 || room == lvl_eight_dir_6 || room == lvl_eight_dir_7)
{
	draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 15.5), gamepad_axis_value(global.gamepad[0], gp_axislh));
	
	draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 16.5), gamepad_axis_value(global.gamepad[0], gp_axislv));
		
}

if (room = lvl_eight_dir_6 || room == lvl_eight_dir_7)
{
		draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 17.5), obj_player_8_dir.octant);
}
*/