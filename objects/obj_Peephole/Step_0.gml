/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox)  && !active && obj_lv3LightTigger.active)
{
	show_debug_message("Peephole")
	active = true;
	obj_playerChar.movement = false;
	
	
	// Draw A/D Keys
}
else if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerInteractionBox) && active && !obj_playerChar.shiftStatus)
{
	show_debug_message("Peephole closed")
	active = false;
	obj_playerChar.movement = true;
}
	
if (place_meeting(x, y, obj_playerInteractionBox) && !obj_playerChar.shiftStatus)
{
	obj_playerChar.keyPromptE = true;
}


if (keyboard_check(ord("D"))  && active)
{
	offset += 3;
 	offset = clamp(offset, -600, 600)
}
if (keyboard_check(ord("A")) && active)
{
	offset -= 3;
	offset = clamp(offset, -600, 600)
}