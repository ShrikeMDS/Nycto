/// @description Insert description here
// You can write your code in this editor

if (room == rm_hub)
{
	room_goto(rm_level2);
	global.roomCompleted[0] = true;
}
if (room == rm_level2)
{
	room_goto(rm_mainMenu);
	global.roomCompleted[1] = true;
}

