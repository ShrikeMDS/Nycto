/// @description - Main Player Step
// Check if any movement keys are pressed
 

///////////////////////
// Animation System
///////////////////////
current_frame += 0.09; // Move to the next frame
if (current_frame >= max_frame) 
{
    current_frame = min_frame; // Reset to the first frame if we reach the maximum frame
};
if (current_frame < min_frame)
{
	current_frame = min_frame
};
	
if keyboard_check(ord("W")) // Walk up
{
	plyDir = 0 + 4;
	min_frame = animStates[plyDir][0];
	max_frame = animStates[plyDir][1];
}
else if keyboard_check(ord("A")) // Walk Left
{
	plyDir = 1 + 4;
	min_frame = animStates[plyDir][0];
	max_frame = animStates[plyDir][1];
}

else if keyboard_check(ord("D")) // Walk Right
{
	plyDir = 2 + 4;
	min_frame = animStates[plyDir][0];
	max_frame = animStates[plyDir][1];
}
else if keyboard_check(ord("S")) // Walk Down
{
	plyDir = 3 + 4;
	min_frame = animStates[plyDir][0];
	max_frame = animStates[plyDir][1];
} 
else
{
	if (plyDir >= 4)
	{
		plyDir -= 4;
	}
	min_frame = animStates[plyDir][0];
	max_frame = animStates[plyDir][1];
}



//////////////////////
// Player Movement
//////////////////////
// Slow down
if (hspd > 0) hspd -= 0.3;
if (vspd > 0) vspd -= 0.3;
if (hspd < 0) hspd += 0.3;
if (vspd < 0) vspd += 0.3;

// Movement Keybinds
if keyboard_check(ord("W")) vspd = -3;
if keyboard_check(ord("D")) hspd = 3; 
if keyboard_check(ord("A")) hspd = -3;
if keyboard_check(ord("S")) vspd = 3

//////////////////////
// Player Actions
//////////////////////
// Swap Status
if keyboard_check_pressed(vk_space) && shiftStatus
{
	shifting = false;
	shiftStatus = false;
	show_debug_message("Shift Status: False");
	obj_fadeIn.image_alpha = 1;
	sprite_assign(spr_playerBase, spr_playerChar);
}
else if keyboard_check_pressed(vk_space) && !shiftStatus
{
	shifting = true;
	shiftStatus = true;
	show_debug_message("Shift Status: True");
}
// Interaction
if keyboard_check_pressed(ord("E"))
{
	show_debug_message("Interact");
}


///////////////////////
// Player Transform
///////////////////////
if (shifting && !shiftAnimTimer <= 0)
{
	min_frame = animStates[8][0];
	max_frame = animStates[8][1];
	shiftAnimTimer--;
}
if (shiftAnimTimer <=0)
{
	if (shiftStatus) sprite_assign(spr_playerBase, spr_playerMon);
	shiftAnimTimer = 1*60;
	shifting = false;
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

if (timeLeft/60 <= 40 && sanityStage == 0)
{
	// Stage 1
	// Slow Heart Beat
	show_debug_message("Insanity: Stage 1")
	sanityStage = 1;
}
if (timeLeft/60 <= 20 && sanityStage == 1)
{
	// Stage 2
	// Eyes
	show_debug_message("Insanity: Stage 2")
	sanityStage = 2;
}
if (timeLeft/60 <= 10 && sanityStage == 2)
{
	// Stage 3
	// Fast Heart Beat
	show_debug_message("Insanity: Stage 3")
	sanityStage = 3;
}
if (timeLeft/60 <= 5 && sanityStage == 3)
{
	// Stage 4
	// Panik
	show_debug_message("Insanity: Stage 4")
	sanityStage = 4;
}


////////////////////
// Camera
////////////////////

if (room == rm_hub)
{
	camera_set_view_pos(view_camera[0], x- (view_wport[0]/2), y - (view_hport[0]/2));
}