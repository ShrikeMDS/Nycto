/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && !obj_playerChar.shiftStatus)
{
	show_debug_message("Peephole")
	active = true;
	obj_playerChar.movement = false;
	// draw thing to GUI
}
	
if (place_meeting(x, y, obj_playerInteractionBox) && !obj_playerChar.shiftStatus)
{
	obj_playerChar.keyPromptE = true;
}

if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
{
	show_debug_message("Peephole closed")
	active = false;
	obj_playerChar.movement = true;
	// remov thing from GUI
}
	