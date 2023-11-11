/// @description Insert description here
// You can write your code in this editor

if (room == rm_hub)
{
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && !active && !obj_playerChar.shiftStatus)
	{
		audio_play_sound(snd_leverPull, 1, false, global.effectVolume)
		show_debug_message("Level Interact: Active")
		image_index = 1;
		active = true;
	}
	else if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		audio_play_sound(snd_leverPull, 1, false, global.effectVolume)
		show_debug_message("Level Interact: Inactive")
		image_index = 0;
		active = false;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
}
if (room == rm_level4)
{
	if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && !active && !obj_playerChar.shiftStatus)
	{
		audio_play_sound(snd_leverPull, 1, false, global.effectVolume)
		show_debug_message("Level Interact: Active")
		image_index = 1;
		active = true;
	}
	else if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		audio_play_sound(snd_leverPull, 1, false, global.effectVolume)
		show_debug_message("Level Interact: Inactive")
		image_index = 0;
		active = false;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
}