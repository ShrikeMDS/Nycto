/// @description Insert description here
// You can write your code in this editor

// Movement
hspeed = 0;
vspeed = 0;
if keyboard_check(ord("A")) hspeed = -5;
if keyboard_check(ord("D")) hspeed = 5;
if keyboard_check(ord("W")) vspeed = -5;
if keyboard_check(ord("S")) vspeed = 5;

// Swap Status
if keyboard_check_pressed(vk_space) && shiftStatus
{
	shiftStatus = false;
	show_debug_message("Shift Status: False");

}
else if keyboard_check_pressed(vk_space) && !shiftStatus
{
	shiftStatus = true;
	show_debug_message("Shift Status: True");
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
