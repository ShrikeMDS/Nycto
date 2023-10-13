/// @description Insert description here
// You can write your code in this editor

// Debug Show/Hide
if (global.debugMode)
{
	visible = true;
} else
{
	visible = false;
}

if (obj_playerChar.shiftStatus)
{
	image_xscale = 2;
	image_yscale = 4;
	x = obj_playerChar.x;
	y = obj_playerChar.y-128;
} else {
	image_xscale = 1.5;
	image_yscale = 2.25;	
	x = obj_playerChar.x;
	y = obj_playerChar.y-64;
}

