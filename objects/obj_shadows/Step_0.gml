/// @description Insert description here
// You can write your code in this editor
if (room == rm_hub)
{
	shadowLevel = spr_level1Shadows;
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
if (room == rm_level2)
{
	shadowLevel = spr_level2Shadows;
	if (obj_playerChar.shiftStatus)
	{
		frame = 1;
	}
	else
	{
		frame = 0;
	}
	
}
if (room == rm_level3)
{
	shadowLevel = spr_level3Shadows;
	if(obj_lv3LightTigger.active)
	{
		if (obj_playerChar.shiftStatus)
		{
			frame = 2;
		}
		else
		{
			frame = 3;
		}
	}
	else
	{
		if (obj_playerChar.shiftStatus)
		{
			frame = 1;
		}
		else
		{
			frame = 0;
		}
	}
}
