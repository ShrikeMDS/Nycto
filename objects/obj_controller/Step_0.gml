/// @description Insert description here
// You can write your code in this editor

if (cursorStatus == 1)
{
	window_set_cursor(cr_arrow);
}
if (cursorStatus == 2)
{
	window_set_cursor(cr_none);
}
if (cursorStatus == 3)
{
	window_set_cursor(cr_handpoint);
}
cursorStatus = 1;
if (room != rm_mainMenu && room != rm_options)
{
	cursorStatus = 2;
}
audio_sound_gain(snd_gameMusic, global.musicVolume, 0);
audio_sound_gain(snd_ambient, global.musicVolume, 0);
if (global.musicVolume < 0)
	global.musicVolume = 0
if (global.musicVolume > 1)
	global.musicVolume = 1
	
if (room == rm_chase)
{
	audio_stop_sound(snd_gameMusic)	
	audio_play_sound(snd_chase, global.musicVolume, true)
}	
if (room == rm_goodEnd)
{
	audio_stop_sound(snd_chase)	
	audio_stop_sound(snd_gameMusic)	
	audio_play_sound(snd_endingMusic, global.musicVolume, true)	
}