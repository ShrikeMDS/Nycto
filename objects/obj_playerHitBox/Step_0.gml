/// @description Insert description here
// You can write your code in this editor

// Set to player Location
x = obj_playerChar.x;
y = obj_playerChar.y;

// Debug Show/Hide
if (global.debugMode)
{
	visible = true;
} else
{
	visible = false;
}

// Player Collision
if (!place_meeting(x + obj_playerChar.hspd, y, obj_wallBase))
{
    obj_playerChar.x += obj_playerChar.hspd;
} else {show_debug_message("X Collision")}
if (!place_meeting(x, y + obj_playerChar.vspd, obj_wallBase))
{
	obj_playerChar.y += obj_playerChar.vspd;
} else {show_debug_message("Y Collision")}