/// @description Insert description here
// You can write your code in this editor

// Room Level 1
if (room == rm_level1)
{
	sprite_assign(spr_keyBase, spr_keyRed);
	if (obj_playerChar.shiftStatus && active)
	{
		visible = true;
		if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_playerChar))
		{
			obj_playerChar.playerInventory[0] = true;
			show_debug_message("Key Gained")
			active = false;
		}
	} 
	else
	{
		visible = false;
	}
}


