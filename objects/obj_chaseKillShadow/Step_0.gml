/// @description Insert description here
// You can write your code in this editor

// Update time_elapsed
time_elapsed += 1;

// Calculate the speed based on time_elapsed
if (time_elapsed < 5.5 * room_speed) {
    // For the first 4 seconds (4 * room_speed)
    x += 1;
} else if (time_elapsed < 20 * room_speed) {
    x += 2;
} else {
    x += 2.5;
}

if (place_meeting(x, y, obj_playerChar))
{
	dead = true;
	obj_playerChar.movement = false;
}

if (dead)
	deathTimer--
if (deathTimer <=0)
	room_restart();