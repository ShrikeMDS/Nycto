/// @description Insert description here
// You can write your code in this editor


if (room == rm_level1)
{
	playerDistance = false;
	if (place_meeting(x, y, obj_playerInteractionBox))
	{
		playerDistance = true;
	}
	
	if (!obj_playerChar.shiftStatus && active)
	{
		if (keyboard_check_pressed(ord("E")) && obj_playerChar.playerInventory[0] == true && playerDistance)
		{
			show_debug_message("Door Opened")
			active = false;
			visible = false;
		}
	} 
}