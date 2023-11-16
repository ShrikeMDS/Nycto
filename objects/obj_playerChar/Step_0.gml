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
	
if (!shiftStatus)
{
	if (keyboard_check(ord("W")) && movement) // Walk up
	{
		plyDir = 0 + 4;
		min_frame = animStates[plyDir][0];
		max_frame = animStates[plyDir][1];
	}
	else if (keyboard_check(ord("A")) && movement) // Walk Left
	{
		plyDir = 1 + 4;
		min_frame = animStates[plyDir][0];
		max_frame = animStates[plyDir][1];
	}

	else if (keyboard_check(ord("D")) && movement) // Walk Right
	{
		plyDir = 2 + 4;
		min_frame = animStates[plyDir][0];
		max_frame = animStates[plyDir][1];
	}
	else if (keyboard_check(ord("S")) && movement) // Walk Down
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
}
else
{
	if (keyboard_check(ord("W")) && movement) // Walk up
	{
		plyDir = 0 + 4;
		min_frame = animStatesMon[plyDir][0];
		max_frame = animStatesMon[plyDir][1];
	}
	else if (keyboard_check(ord("A")) && movement) // Walk Left
	{
		plyDir = 1 + 4;
		min_frame = animStatesMon[plyDir][0];
		max_frame = animStatesMon[plyDir][1];
	}

	else if (keyboard_check(ord("D")) && movement) // Walk Right
	{
		plyDir = 2 + 4;
		min_frame = animStatesMon[plyDir][0];
		max_frame = animStatesMon[plyDir][1];
	}
	else if (keyboard_check(ord("S")) && movement) // Walk Down
	{
		plyDir = 3 + 4;
		min_frame = animStatesMon[plyDir][0];
		max_frame = animStatesMon[plyDir][1];
	} 
	else
	{
		if (plyDir >= 4)
		{
			plyDir -= 4;
		}
		min_frame = animStatesMon[plyDir][0];
		max_frame = animStatesMon[plyDir][1];
	}	
}


//////////////////////
// Player Movement
//////////////////////
// Slow down
if (hspd > 0) hspd -= 0.25;
if (vspd > 0) vspd -= 0.25;
if (hspd < 0) hspd += 0.25;
if (vspd < 0) vspd += 0.25;

// Movement Keybinds
if (keyboard_check(ord("W")) && movement) vspd = -2;
if (keyboard_check(ord("D")) && movement) hspd = 2;
if (keyboard_check(ord("A")) && movement) hspd = -2;
if (keyboard_check(ord("S")) && movement) vspd = 2;

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
	shiftAnimTimer = 100;
	shifting = false;
	min_frame = animStatesMon[0][0];
	max_frame = animStatesMon[0][1];
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

if (timeLeft <= 22 * 60 && sanityStage == 0)
{
	// Stage 1
	// Slow Heart Beat
	show_debug_message("Insanity: Stage 1")
	sanityStage = 1;
	audio_play_sound(snd_heartbeatSingle, 1, false, global.effectVolume)	
}
if (timeLeft <= 15 * 60 && sanityStage == 1)
{
	// Stage 2
	// Eyes
	show_debug_message("Insanity: Stage 2")
	sanityStage = 2;
	audio_play_sound(snd_heartbeat, 1, true, global.effectVolume)
}
if (timeLeft <= 10 * 60 && sanityStage == 2)
{
	// Stage 3
	// Fast Heart Beat
	show_debug_message("Insanity: Stage 3")
	sanityStage = 3;
}
if (timeLeft <= 6 * 60 && sanityStage == 3)
{
	// Stage 4
	// Panik
	show_debug_message("Insanity: Stage 4")
	sanityStage = 4;
	audio_stop_sound(snd_heartbeat);
	audio_play_sound(snd_heartbeatFast, 1, true, global.effectVolume)
}

////////////////////
// Camera
////////////////////

camera_set_view_pos(view_camera[0], x- (view_wport[0]/2), y - (view_hport[0]/2));
movement = true;