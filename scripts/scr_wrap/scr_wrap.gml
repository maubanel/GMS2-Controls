var num = argument0;
var dir = argument1;

num += (dir * .25) * room_speed;
show_debug_message(num);
if (num == .35 * room_speed) num = .25 * room_speed;
else if (num == 0) num = .1 * room_speed;

if (num < .1 * room_speed)
{
	num =  room_speed * 10;	
}

if (num > room_speed * 10)
{
	num = .1 * room_speed;
}

return num;