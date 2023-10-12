/// @description Insert description here
// You can write your code in this editor

shiftStatus = false;
timeLeft = 60*60; // first number is time in seconds


current_frame = 0; // Initialize the current frame
max_frame = 2; // Set the total number of frames in your animation
is_moving = false; // Initialize the movement status
sprite_assign(spr_playerBase, spr_playerChar); // Set Base Sprite to Human

hspd = 0;
vspd = 0;