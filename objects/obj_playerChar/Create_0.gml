/// @description Insert description here
// You can write your code in this editor

shiftStatus = false;
shiftAnimTimer = 100;
shifting = false;
timeLeft = 30*60; // first number is time in seconds
sanityStage = 0;
movement = true; // allow player movement
deathTimer = 130;

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
walkUpAnim = [16, 21];
walkRightAnim = [23, 27];
walkLeftAnim = [10, 15];
walkDownAnim = [4, 9];
// Actions
TransformAnim = [28, 38];

// All Anim States
animStates = [idleLeftAnim, idleDownAnim, idleRightAnim, idleUpAnim, walkUpAnim, walkRightAnim, walkLeftAnim, walkDownAnim, TransformAnim];

idleUpAnimMon = [0, 0];
idleRightAnimMon = [1, 1];
idleLeftAnimMon = [2, 2];
idleDownAnimMon = [3, 3];
// Walk
walkUpAnimMon = [34, 43];
walkRightAnimMon = [14, 23];
walkLeftAnimMon = [24, 33];
walkDownAnimMon = [4, 13];

// All Anim States
animStatesMon = [idleLeftAnimMon, idleDownAnimMon, idleRightAnimMon, idleUpAnimMon, walkUpAnimMon, walkLeftAnimMon, walkRightAnimMon, walkDownAnimMon];


//////////////////////
// Key Prompts
//////////////////////
keyPromptOption = false;
keyPromptStart = false;
keyPromptExit = false;
keyPromptE = false;
keyPromptSpace = false;