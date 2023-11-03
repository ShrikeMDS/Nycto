/// @description Insert description here
// You can write your code in this editor

shiftStatus = false;
shiftAnimTimer = 1*60;
shifting = false;
timeLeft = 30*60; // first number is time in seconds
sanityStage = 0;
movement = true; // allow player movement

sprite_assign(spr_playerBase, spr_playerChar); // Set Base Sprite to Human
audio_stop_sound(snd_heartbeat);
audio_stop_sound(snd_heartbeatFast);

// Create Movement
hspd = 0;
vspd = 0;

// keys
//                 Key 1, Key 2, Key 3, Key 4
playerInventory = [false, false, false, false];

spawnPosX = x;
spawnPosY = y;

/////////////////////////
// Animation System
/////////////////////////
// Frame Rate is ~6FPS
// Initialize the current frame
current_frame = 0; // Interator For Current Frame
max_frame = 2; // Set the total number of frames in your animation
min_frame = 0; // Set the total number of frames in your animation
plyDir = 4; // Player Direction

// Animation States
// Idle
idleUpAnim = [0, 0];
idleRightAnim = [1, 1];
idleLeftAnim = [2, 2];
idleDownAnim = [3, 3];
// Walk
walkUpAnim = [4, 6];
walkRightAnim = [6, 8];
walkLeftAnim = [8, 10];
walkDownAnim = [10, 12];
// Actions
TransformAnim = [12, 17];

// All Anim States
animStates = [idleUpAnim, idleRightAnim, idleLeftAnim, idleDownAnim, walkUpAnim, walkRightAnim, walkLeftAnim, walkDownAnim, TransformAnim];


//////////////////////
// Key Prompts
//////////////////////
keyPromptE = false;
keyPromptSpace = false;