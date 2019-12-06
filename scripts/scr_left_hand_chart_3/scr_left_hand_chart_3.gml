draw_set_halign(fa_right);
draw_set_font(fnt_small);
draw_set_color(c_white);
var offset = 28;
var initial_y_pos = 160;
var y_pos = initial_y_pos;
var l_margin_x = 110;
var text_offset = 90;
var first_column_x = 6 +  text_offset + l_margin_x;
var second_column_x = 50 + first_column_x;

draw_line(l_margin_x, y_pos, second_column_x, y_pos);

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5 , "p_speed");
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "turn_rate");

y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "p_acc");
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "p_friction");

	
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
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "direction");
	
y_pos += offset;
draw_line(l_margin_x, y_pos, second_column_x, y_pos);
draw_text(l_margin_x + text_offset, y_pos - offset * .5, "image_angle");
	

draw_line (l_margin_x, initial_y_pos, l_margin_x, y_pos);
draw_line (first_column_x, initial_y_pos, first_column_x, y_pos);
draw_line(second_column_x, initial_y_pos, second_column_x, y_pos);
		

draw_set_halign(fa_center);
draw_set_color(c_white);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * .5) , obj_player_8_dir_2.p_speed);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 1.5) , obj_player_8_dir_2.turn_rate);
		
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 2.5) , obj_player_8_dir_2.p_acc);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 3.5) , obj_player_8_dir_2.p_friction);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 4.5) , obj_player_8_dir_2.x_axis);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 5.5) , obj_player_8_dir_2.y_axis);
		
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 6.5) , obj_player_8_dir_2.hspeed);

draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 7.5) , obj_player_8_dir_2.vspeed);
			
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 8.5), obj_player_8_dir_2.speed);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 9.5), obj_player_8_dir_2.direction);
	
draw_text(((second_column_x - first_column_x) * .5) + first_column_x, initial_y_pos + (offset * 10.5), obj_player_8_dir_2.image_angle);
