/// @description Insert description here
// You can write your code in this editor

// Room Level 1
if (room == rm_hub)
{
	
	sprite_assign(spr_keyBase, spr_keyRed);
	if (obj_playerChar.shiftStatus && active)
	{
		if (place_meeting(x, y, obj_playerInteractionBox))
		{
			obj_playerChar.keyPromptE = true;
		}
	
		visible = true;
		if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
		{
			obj_playerChar.playerInventory[0] = true;
			show_debug_message("Key Gained")
			active = false;
		}
	} 
	else
	{
		visible = false;
	}
}
if (room == rm_level2)
{
	
	sprite_assign(spr_keyBase, spr_keyRed);
	if (obj_playerChar.shiftStatus && active)
	{
		if (place_meeting(x, y, obj_playerInteractionBox))
		{
			obj_playerChar.keyPromptE = true;
		}
	
		visible = true;
		if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
		{
			obj_playerChar.playerInventory[0] = true;
			show_debug_message("Key Gained")
			active = false;
		}
	} 
	else
	{
		visible = false;
	}
}

if (room == rm_level6)
{
	
	sprite_assign(spr_keyBase, spr_keyRed);
	if (obj_playerChar.shiftStatus && active)
	{
		if (place_meeting(x, y, obj_playerInteractionBox))
		{
			obj_playerChar.keyPromptE = true;
		}
	
		visible = true;
		if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
		{
			obj_playerChar.playerInventory[0] = true;
			show_debug_message("Key Gained")
			active = false;
		}
	} 
	else
	{
		visible = false;
	}
}

