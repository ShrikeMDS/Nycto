/// @description Insert description here
// You can write your code in this editor

// start game
if (!place_meeting(mouse_x, mouse_y, self))
{
	show_debug_message("Start Game");
	room_goto(rm_level1)
}

