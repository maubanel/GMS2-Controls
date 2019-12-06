/// @description Insert description here

// Speed in pixels per second
p_acc = .08 * room_speed;

// Max speed
p_max_speed = 6 * room_speed;


// Maximum number of degrees per frame sprite can rotate at
turn_rate = 5 * room_speed;

// Center Player
x = obj_frame.x;
y = obj_frame.y;

// Friction
p_friction = .025 * room_speed;

// Frame dimensions
width_play_area =( sprite_get_width(spr_frame) - sprite_get_width(spr_player_1) ) * .5;
