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
if (global.musicVolume < 0)
	global.musicVolume = 0
if (global.musicVolume > 1)
	global.musicVolume = 1