/// @description Insert description here
// You can write your code in this editor

global.debugMode = false;
global.effectVolume = 1;
global.musicVolume = 1;



//                     Room Hub,  Lv2,   Lv3,   Lv4,   Lv5,   lv6,  chase
global.roomCompleted = [false,   false, false, false, false, false, false]

audio_play_sound(snd_ambient, 1, true)
audio_play_sound(snd_gameMusic, 1, true)