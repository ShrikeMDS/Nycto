/// @description Insert description here
// You can write your code in this editor
if (obj_playerChar.sanityStage == 0)
{
	visible = false
}
if (obj_playerChar.sanityStage == 1)
{
	visible = true
	sprite_assign(spr_sanityStage0, spr_sanityStage1);
}
if (obj_playerChar.sanityStage == 2)
{
	sprite_assign(spr_sanityStage0, spr_sanityStage2);
}
if (obj_playerChar.sanityStage == 3)
{
	sprite_assign(spr_sanityStage0, spr_sanityStage3);
}
if (obj_playerChar.sanityStage == 4)
{
	sprite_assign(spr_sanityStage0, spr_sanityStage4);
}
frame += 6/60
if (frame >=  4)
	frame = 0
