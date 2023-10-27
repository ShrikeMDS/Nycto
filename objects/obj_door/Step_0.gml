/// @description Insert description here
// You can write your code in this editor


if (room == rm_hub)
{
	image_index = 1;
	image_alpha = 1;
	playerDistance = false;
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		playerDistance = true;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (obj_playerChar.shiftStatus && active)
	{
		if (keyboard_check_pressed(ord("E")) && obj_playerChar.playerInventory[0] == true && playerDistance)
		{
			show_debug_message("Door Opened")
			active = false;
			visible = false;
		}
	} 
}

if (room == rm_level2)
{
	image_index = 0;
	image_alpha = 1;
	playerDistance = false;
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		playerDistance = true;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (obj_playerChar.shiftStatus && active)
	{
		if (keyboard_check_pressed(ord("E")) && obj_playerChar.playerInventory[0] == true && playerDistance)
		{
			show_debug_message("Door Opened")
			active = false;
			visible = false;
		}
	} 
}