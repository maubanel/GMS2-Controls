/// @description P1 8 Direction Variables

// Speed in pixels per second
p_speed = 2 * room_speed;


// Maximum number of degrees per frame sprite can rotate at
turn_rate = 5 * room_speed;

// Center Player
x = obj_frame.x;
y = obj_frame.y;

// Octant for debug menu
octant = 0;

// Max Acceleration
p_acc = .25 * room_speed;

// Friction
p_friction = .1 * room_speed;

// Frame dimensions
width_play_area =( sprite_get_width(spr_frame) - sprite_get_width(spr_player_1) ) * .5;

// varibales for buttons
p_speed_next = p_speed;

turn_rate_next = turn_rate;

p_acc_next = p_acc;

p_friction_next = p_friction;