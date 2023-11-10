/// @description Insert description here
// You can write your code in this editor

if (active)
{
	obj_playerChar.movement = false;
	if (obj_playerChar.shiftStatus)
	{
		draw_sprite(spr_peepholeLv3, 1, 0, 0)
	}
	else
	{
		draw_sprite(spr_peepholeLv3, 0, 0, 0)	
	}
	
	draw_sprite(spr_keyhole, 0, offset - 639, 0)
	
}

