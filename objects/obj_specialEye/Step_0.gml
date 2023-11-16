/// @description Insert description here
// You can write your code in this editor

if (room == rm_level2)
{
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
	{
		global.specialInventory[0] = true;
		show_debug_message("EYE Gained")
		visible = false;
	}
}
if (room == rm_level3)
{
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
	{
		global.specialInventory[1] = true;
		show_debug_message("EYE Gained")
		visible = false;
	}
}
if (room == rm_level4)
{
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
	{
		global.specialInventory[2] = true;
		show_debug_message("EYE Gained")
		visible = false;
	}
}
if (room == rm_level5)
{
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
	{
		global.specialInventory[3] = true;
		show_debug_message("EYE Gained")
		visible = false;
	}
}
if (room == rm_level6)
{
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox))
	{
		global.specialInventory[4] = true;
		show_debug_message("EYE Gained")
		visible = false;
	}
}