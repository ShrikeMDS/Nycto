/// @description Insert description here
// You can write your code in this editor


if (room == rm_hub)
{
	if (obj_playerChar.shiftStatus)
	{
		if(obj_lamp.active)	frame = 3;
		else frame = 2;
	}
	else
	{
		if(obj_lamp.active)	frame = 1;
		else frame = 0;
	}
	
}
