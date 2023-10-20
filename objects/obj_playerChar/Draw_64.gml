/// @description Insert description here
// You can write your code in this editor

if (global.debugMode)
{
	// Debug Font Setup
	draw_set_colour(c_lime);
	draw_set_font(fnt_debug);
	
	// Time Left
	draw_text(90, 10, timeLeft/60);
	draw_text(10, 10, "Time Left:");
	draw_text(90, 30, playerInventory[0]);
	draw_text(10, 30, "Key 1:");
	draw_text(90, 50, playerInventory[1]);
	draw_text(10, 50, "Key 2:");
	draw_text(90, 70, playerInventory[2]);
	draw_text(10, 70, "Key 3:");
	draw_text(90, 70, playerInventory[3]);
	draw_text(10, 70, "Key 4:");
}
if (sanityStage == 2)
{
	draw_sprite(spr_killTrigger, 0, 10, 10);
}

if (keyPromptE)
{
	draw_sprite(spr_keyPrompt_E, 0, 1920/2, 900)
}
if (keyPromptSpace)
{
	draw_sprite(spr_keyPrompt_Space, 0, 1920/2, 900)
}

keyPromptE = false;
keyPromptSpace = false;