/// @description Insert description here
// You can write your code in this editor

// varibales for buttons
p_speed = 3 * room_speed;

// Max Acceleration
//p_acc = .5 * room_speed;

// Friction
p_friction = .5 * room_speed;



// Center Player
x = obj_frame.x;
y = obj_frame.y;

// Frame dimensions
width_play_area =( sprite_get_width(spr_frame) - sprite_get_width(spr_peng_d) ) * .5;