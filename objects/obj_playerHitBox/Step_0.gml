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

// Player Collsion
Hcolliding = false
Vcolliding = false

// X
if (place_meeting(x + obj_playerChar.hspd, y, obj_wallBase))
{
	Hcolliding = true;	
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_wallFront))
{
	Hcolliding = true;	
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_wallSide))
{
	Hcolliding = true;	
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_door_light) && obj_door_light.active)
{
	Hcolliding = true;	
}

// Y
if (place_meeting(x, y + obj_playerChar.vspd, obj_wallBase))
{
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_wallFront))
{
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_wallSide))
{
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_door_light) && obj_door_light.active)
{
	Vcolliding = true;	
}

// Player Movement
if (!Hcolliding) // X
{
    obj_playerChar.x += obj_playerChar.hspd;
} else {show_debug_message("X Collision")}
if (!Vcolliding) // Y
{
	obj_playerChar.y += obj_playerChar.vspd;
} else {show_debug_message("Y Collision")}

if (obj_playerChar.shiftStatus)
{
	image_xscale = 1.5;
	image_yscale = 1.5;
	// Set to player Location
	x = obj_playerChar.x;
	y = obj_playerChar.y-48;
} else {
	image_xscale = 1;
	image_yscale = 1;	
	// Set to player Location
	x = obj_playerChar.x;
	y = obj_playerChar.y-32;
}