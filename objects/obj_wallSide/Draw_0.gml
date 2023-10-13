/// @description Insert description here
// You can write your code in this editor

if (obj_playerChar.shiftStatus)
{
	draw_sprite(spr_wallHitbox_side, current_frame, x, y);
	current_frame = 1;
} 
if (!obj_playerChar.shiftStatus) {
	draw_sprite(spr_wallHitbox_side, current_frame, x, y);
	current_frame = 2;
}