/// @description Insert description here
// You can write your code in this editor

playerDistance = false;
if (place_meeting(x, y, obj_playerInteractionBox))
{
	playerDistance = true;
}
	

if (keyboard_check_pressed(ord("E")) && playerDistance && active)
{
	show_debug_message("Lamp Switch Off")
	image_index = 0;
	active = false;
}
else if (keyboard_check_pressed(ord("E")) && playerDistance && !active)
{
	show_debug_message("Lamp Switch On")
	image_index = 1;
	active = true;
}

