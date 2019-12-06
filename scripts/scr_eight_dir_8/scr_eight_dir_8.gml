draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * .5, 32, "8 Direction Walking Controls - Room 8");
draw_set_color(c_white);
draw_set_font(fnt_reg);
draw_text(room_width * .5, 67, "Adjust values to experience different settings");

var code_y = 186;
var code_x = 780;
var line_space = 64;
draw_set_halign(fa_right);
draw_set_font(fnt_reg);



//p_acc = .2 * room_speed;
draw_set_color(c_white);
draw_text(code_x, code_y, "p_speed: ");
draw_set_halign(fa_left);
if (obj_player_8_dir_2.p_speed_next == obj_player_8_dir_2.p_speed) draw_set_color(c_white);
else draw_set_color(c_yellow);
draw_text(code_x, code_y, "  " + string(obj_player_8_dir_2.p_speed_next/ room_speed) + " * room_speed" );
draw_set_color(c_white);
code_y += line_space
draw_set_halign(fa_right);
draw_text (code_x, code_y, "turn_rate: ");
draw_set_halign(fa_left);
if (obj_player_8_dir_2.turn_rate_next == obj_player_8_dir_2.turn_rate) draw_set_color(c_white);
else draw_set_color(c_yellow);
draw_text(code_x, code_y, "  " + string(obj_player_8_dir_2.turn_rate_next/ room_speed) + " * room_speed");
draw_set_color(c_white);
code_y += line_space;
draw_set_halign(fa_right);
draw_text (code_x, code_y, "p_acc: ");
draw_set_halign(fa_left);
if (obj_player_8_dir_2.p_acc_next == obj_player_8_dir_2.p_acc) draw_set_color(c_white);
else draw_set_color(c_yellow);
draw_text(code_x, code_y, "  " + string(obj_player_8_dir_2.p_acc_next/ room_speed) + " * room_speed");
draw_set_color(c_white);
code_y += line_space;
draw_set_halign(fa_right);
draw_text (code_x, code_y, "p_friction: ");
draw_set_halign(fa_left);
if (obj_player_8_dir_2.p_friction_next == obj_player_8_dir_2.p_friction) draw_set_color(c_white);
else draw_set_color(c_yellow);
draw_text(code_x, code_y, "  " + string(obj_player_8_dir_2.p_friction_next/ room_speed) + " * room_speed");

if (obj_player_8_dir_2.p_friction >= obj_player_8_dir_2.p_acc)
{
	code_x = 680;
	code_y += line_space ;
	draw_set_color(c_red);
	draw_set_halign(fa_left);
	draw_text(code_x, code_y, "You cannot move as friction is greater than your acceleration force");
}

if (obj_player_8_dir_2.p_acc >= obj_player_8_dir_2.p_speed)
{
	code_x = 680;
	code_y += line_space ;
	draw_set_color(c_orange);
	draw_set_halign(fa_left);
	draw_text(code_x, code_y, "There is no accelleration as the player will hit max speed right away");
}



	