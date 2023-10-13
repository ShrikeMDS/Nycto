/// @description Insert description here
// You can write your code in this editor


// Debug Mode Button
if (!place_meeting(mouse_x, mouse_y, self))
{
	if (!global.debugMode)
	{
		show_debug_message("Debug Mode on");
		global.debugMode = true;
	} else
	{
		show_debug_message("Debug Mode off");
		global.debugMode = false;
	}
}

