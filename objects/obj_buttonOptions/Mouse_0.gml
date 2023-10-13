/// @description Insert description here
// You can write your code in this editor


// start game button
if (!place_meeting(mouse_x, mouse_y, self))
{
	show_debug_message("Options Menu");
	room_goto(rm_options)
}

