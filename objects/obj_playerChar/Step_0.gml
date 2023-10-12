/// @description Insert description here
// You can write your code in this editor

// Check if any movement keys are pressed
if (keyboard_check(ord("A")) || keyboard_check(ord("D")) || keyboard_check(ord("W")) || keyboard_check(ord("S"))) {
    is_moving = true; // Player is moving
    current_frame += 1; // Move to the next frame
    if (current_frame >= max_frame) {
        current_frame = 0; // Reset to the first frame if we reach the maximum frame
    }
} else {
    is_moving = false; // Player is not moving
    current_frame = 0; // Reset to the first frame when not moving
}

// Movement
hspeed = 0;
vspeed = 0;
if keyboard_check(ord("A")) hspeed = -3;
if keyboard_check(ord("D")) hspeed = 3;
if keyboard_check(ord("W")) vspeed = -3;
if keyboard_check(ord("S")) vspeed = 3;

// Swap Status
if keyboard_check_pressed(vk_space) && shiftStatus
{
	shiftStatus = false;
	show_debug_message("Shift Status: False");
	sprite_assign(spr_playerMon, spr_playerChar);
}
else if keyboard_check_pressed(vk_space) && !shiftStatus
{
	shiftStatus = true;
	show_debug_message("Shift Status: True");
	sprite_assign(spr_playerChar, spr_playerMon);
}

if keyboard_check_pressed(ord("E"))
{
	show_debug_message("Interact");
}

if shiftStatus
{
	timeLeft--
	show_debug_message(timeLeft)
}
