/// @description Insert description here
// You can write your code in this editor

if (room == rm_level3)
{
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && obj_playerChar.shiftStatus)
	{
		show_debug_message("Rug Pulled")
		image_index = 1;
		active = false;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
}