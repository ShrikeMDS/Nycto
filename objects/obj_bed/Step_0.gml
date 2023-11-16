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
		obj_playerChar.keyPromptStart = true;
	}
	
	if (keyboard_check_pressed(ord("E")) && playerDistance)
	{
		show_debug_message("Start Game");
		room_goto(rm_hub)
	}
}