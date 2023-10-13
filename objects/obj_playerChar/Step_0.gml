/// @description Insert description here
// You can write your code in this editor

// Check if any movement keys are pressed
if (keyboard_check(ord("A")) || keyboard_check(ord("D")) || keyboard_check(ord("W")) || keyboard_check(ord("S"))) {
    is_moving = true; // Player is moving
    current_frame += 0.1; // Move to the next frame
    if (current_frame >= max_frame) {
        current_frame = min_frame; // Reset to the first frame if we reach the maximum frame
    }
} else {
    is_moving = false; // adaPlayer is not moving
    current_frame = min_frame; // Reset to the first frame when not moving
}

// Slow down
if (hspd > 0) hspd -= 0.3;
if (vspd > 0) vspd -= 0.3;
if (hspd < 0) hspd += 0.3;
if (vspd < 0) vspd += 0.3;

// For Player Collision Check obj_playerHitBox

// Movement Keybinds
min_frame = 0;
max_frame = 0;
if keyboard_check(ord("A")) 
{
	hspd = -3;
	min_frame = 1;
	max_frame = 3;
	
}
if keyboard_check(ord("D")) 
{
	hspd = 3; 
	min_frame = 3;
	max_frame = 5;
}
if keyboard_check(ord("W")) vspd = -3;
if keyboard_check(ord("S")) vspd = 3

if keyboard_check_pressed(ord("A")) current_frame = min_frame;;
if keyboard_check_pressed(ord("D")) current_frame = min_frame;

// Swap Status
if keyboard_check_pressed(vk_space) && shiftStatus
{
	shiftStatus = false;
	show_debug_message("Shift Status: False");
	sprite_assign(spr_playerBase, spr_playerChar);
}
else if keyboard_check_pressed(vk_space) && !shiftStatus
{
	shiftStatus = true;
	show_debug_message("Shift Status: True");
	sprite_assign(spr_playerBase, spr_playerMon);
}

// Interaction
if keyboard_check_pressed(ord("E"))
{
	show_debug_message("Interact");
}

// Shift Timer
if (shiftStatus && timeLeft != 0)
{
	timeLeft--
	if (timeLeft/60 == round(timeLeft/60))
	{
		show_debug_message(timeLeft/60)
	}
}

