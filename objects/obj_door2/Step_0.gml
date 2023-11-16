/// @description Insert description here
// You can write your code in this editor


if (room == rm_hub && active)
{
	image_index = 1;
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
			audio_play_sound(snd_doorUnlock, 1, false, global.effectVolume)
			show_debug_message("Door Opened")
			active = false;
			image_index = 3;
		}
	} 
}

if (room == rm_level3)
{
	active = false;	
}

if (room == rm_level4 && active)
{
	image_index = 0;
	playerDistance = false;
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		playerDistance = true;
	}
	
	if (place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
	{
		obj_playerChar.keyPromptE = true;
	}
	
	if (!obj_playerChar.shiftStatus && active)
	{
		if (keyboard_check_pressed(ord("E")) && obj_playerChar.playerInventory[0] == true && playerDistance)
		{
			audio_play_sound(snd_doorUnlock, 1, false, global.effectVolume)
			show_debug_message("Door Opened")
			active = false;
			image_index = 2;
		}
	} 
}

if (room == rm_level3)
{
	active = false;
}