/// @description Insert description here
// You can write your code in this editor

if (room == rm_mainMenu)
{
	playerDistance = false;
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		playerDistance = true;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		obj_playerChar.keyPromptOption = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && playerDistance)
	{
		show_debug_message("Options Menu");
	room_goto(rm_options)
	}
}
if (room == rm_hub)
{
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		show_debug_message("Lamp Switch Off")
		image_index = 0;
		active = false;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (!active&& !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptSpace = true;
	}
}
if (room == rm_level2)
{
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		show_debug_message("Lamp Switch Off")
		image_index = 0;
		active = false;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (!active&& !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptSpace = true;
	}
}

