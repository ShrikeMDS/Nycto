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
		obj_playerChar.keyPromptExit = true;
		if (obj_playerChar.keyPromptExit = true)
		{
			obj_playerChar.keyPromptStart = false;
		}
	}
	
	if (keyboard_check_pressed(ord("E")) && playerDistance)
	{
		game_end(0);
	}
}
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

if (room == rm_level2 && active)
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
    playerDistance = false;
    if (place_meeting(x, y, obj_playerInteractionBox))
    {
        playerDistance = true;
    }

    if (place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
    {
        obj_playerChar.keyPromptE = true;
    }

    if (!obj_playerChar.shiftStatus && active && obj_dialPuzzle.solved != true)
    {
        if (keyboard_check_pressed(ord("E")) && playerDistance)
        {
            obj_dialPuzzle.active = true;
				show_debug_message("Puzzle Acitve");
        }
    }

    if (!obj_playerChar.shiftStatus && active && obj_dialPuzzle.solved == true)
    {
        if (keyboard_check_pressed(ord("E")) && playerDistance)
        {
            audio_play_sound(snd_doorUnlock, 1, false, global.effectVolume);
            show_debug_message("Door Opened");
            active = false;
            image_index = 6;
        }
    }
}
if (room == rm_level4 && obj_lever.active)
{
    image_index = 0;
    playerDistance = false;
    if (place_meeting(x, y, obj_playerInteractionBox))
    {
        playerDistance = true;
    }

    if (place_meeting(x, y, obj_playerInteractionBox) && obj_lever.active && obj_playerChar.shiftStatus)
    {
        obj_playerChar.keyPromptE = true;
    }

    if (obj_playerChar.shiftStatus && obj_lever.active)
    {
        if (keyboard_check_pressed(ord("E")) && obj_playerChar.playerInventory[1] == true && playerDistance)
        {
            audio_play_sound(snd_doorUnlock, 1, false, global.effectVolume)
            show_debug_message("Door Opened")
            obj_lever.active = false; // Update lever state to inactive
            visible = false;
			active = false;
        }
    }
}
if (room == rm_level5)
{
	active = false;
}
if (room == rm_level6)
{
	active = false;
}