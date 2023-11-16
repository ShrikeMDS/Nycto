/// @description Insert description here
// You can write your code in this editor
if (room == rm_hub)
{
	room_goto(rm_level2);
	global.roomCompleted[0] = true;
}
if (room == rm_level2)
{
	room_goto(rm_level3);
	global.roomCompleted[1] = true;
}
if (room == rm_level3)
{
	room_goto(rm_level4);
	global.roomCompleted[2] = true;
}
if (room == rm_level4)
{
	room_goto(rm_level5);
	global.roomCompleted[3] = true;
}
if (room == rm_level5)
{
	room_goto(rm_chase);
	global.roomCompleted[4] = true;
}
if (room == rm_chase)
{
	room_goto(rm_mainMenu);
	global.roomCompleted[6] = true;
}

