/// @description Insert description here
// You can write your code in this editor

if (room == rm_hub)
{
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		show_debug_message("Lamp Switch Off")
		image_index = 0;
		active = false;
	}
	//else if (keyboard_check_pressed(ord("E")) && playerDistance && !active&& !obj_playerChar.shiftStatus)
	//{
	//	show_debug_message("Lamp Switch On")
	//	image_index = 1;
	//	active = true;
	//}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (!active&& !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptSpace = true;
	}
}


