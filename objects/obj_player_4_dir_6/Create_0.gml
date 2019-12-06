/// @description Insert description here
// You can write your code in this editor

// varibales for buttons
p_speed = 2 * room_speed;

// Max Acceleration
p_acc = .2 * room_speed;

// Friction
p_friction = .1 * room_speed;




// Center Player
x = obj_frame.x;
y = obj_frame.y;

// Frame dimensions
width_play_area =( sprite_get_width(spr_frame) - sprite_get_width(spr_player_1) ) * .5;

// varibales for buttons
p_speed_next = p_speed;

p_acc_next = p_acc;

p_friction_next = p_friction;

octant = 0;