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
if (place_meeting(x + obj_playerChar.hspd, y, obj_collisionBlock))
{
	Hcolliding = true;	
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_bed))
{
	Hcolliding = true;	
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_door) && obj_door.active)
{
	Hcolliding = true;	
}

// Y
if (place_meeting(x, y + obj_playerChar.vspd, obj_collisionBlock))
{
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_bed))
{
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_door) && obj_door.active)
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

x = obj_playerChar.x;
y = obj_playerChar.y-48;