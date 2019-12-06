var num = argument0;
var dir = argument1;

num += (dir * .1) * room_speed;

if (num < room_speed * .1)
{
	num =  room_speed * 2;	
}

if (num > 2 * room_speed )
{
	num = 	room_speed * .1;
}

return num;