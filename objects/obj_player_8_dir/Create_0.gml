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

// Frame dimensions
width_play_area =( sprite_get_width(spr_frame) - sprite_get_width(spr_player_1) ) * .5;
