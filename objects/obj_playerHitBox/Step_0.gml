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

if (!obj_playerChar.movement)
{
	Hcolliding = true
	Vcolliding = true
}

// X
if (place_meeting(x + obj_playerChar.hspd, y, obj_collisionBlock))
{
	Hcolliding = true;	
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_bookshelf))
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
if (place_meeting(x + obj_playerChar.hspd, y, obJ_desk))
{
	if (place_meeting(obJ_desk.x + obj_playerChar.hspd, obJ_desk.y, obj_collisionBlock))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x + obj_playerChar.hspd, obJ_desk.y, obj_wardrobe))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x + obj_playerChar.hspd, obJ_desk.y, obj_bookshelf))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x + obj_playerChar.hspd, obJ_desk.y, obj_bed))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x + obj_playerChar.hspd, obJ_desk.y, obj_door) && obj_door.active)
	{
		Hcolliding = true;	
	}
	else if (keyboard_check(ord("E")) && obj_playerChar.shiftStatus)
		obJ_desk.x = obJ_desk.x + obj_playerChar.hspd;
		Hcolliding = true;
}
if (place_meeting(x + obj_playerChar.hspd, y, obj_wardrobe))
{
	if (place_meeting(obj_wardrobe.x + obj_playerChar.hspd, obj_wardrobe.y, obj_collisionBlock))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x + obj_playerChar.hspd, obj_wardrobe.y, obJ_desk))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x + obj_playerChar.hspd, obj_wardrobe.y, obj_bookshelf))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x + obj_playerChar.hspd, obj_wardrobe.y, obj_bed))
	{
		Hcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x + obj_playerChar.hspd, obj_wardrobe.y, obj_door) && obj_door.active)
	{
		Hcolliding = true;	
	}
	else if (keyboard_check(ord("E")) && obj_playerChar.shiftStatus)
		obj_wardrobe.x = obj_wardrobe.x + obj_playerChar.hspd;
		Hcolliding = true;
}

// Y
if (place_meeting(x, y + obj_playerChar.vspd, obj_collisionBlock))
{
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_bookshelf))
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
if (place_meeting(x, y + obj_playerChar.vspd, obJ_desk))
{
	if (place_meeting(obJ_desk.x, obJ_desk.y + obj_playerChar.vspd, obj_collisionBlock))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x, obJ_desk.y + obj_playerChar.vspd, obj_wardrobe))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x, obJ_desk.y + obj_playerChar.vspd, obj_bookshelf))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x, obJ_desk.y + obj_playerChar.vspd, obj_bed))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obJ_desk.x, obJ_desk.y + obj_playerChar.vspd, obj_door) && obj_door.active)
	{
		Vcolliding = true;	
	}
	else if (keyboard_check(ord("E")) && obj_playerChar.shiftStatus)
		obJ_desk.y = obJ_desk.y + obj_playerChar.vspd;
	Vcolliding = true;	
}
if (place_meeting(x, y + obj_playerChar.vspd, obj_wardrobe))
{
	if (place_meeting(obj_wardrobe.x, obj_wardrobe.y + obj_playerChar.vspd, obj_collisionBlock))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x, obj_wardrobe.y + obj_playerChar.vspd, obj_bookshelf))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x, obj_wardrobe.y + obj_playerChar.vspd, obj_bed))
	{
		Vcolliding = true;	
	}
	else if (place_meeting(obj_wardrobe.x, obj_wardrobe.y + obj_playerChar.vspd, obj_door) && obj_door.active)
	{
		Vcolliding = true;	
	}
	else if (keyboard_check(ord("E")) && obj_playerChar.shiftStatus)
		obj_wardrobe.y = obj_wardrobe.y + obj_playerChar.vspd;
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
y = obj_playerChar.y-32;