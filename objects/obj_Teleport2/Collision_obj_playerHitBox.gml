/// @description Insert description here
// You can write your code in this editor

if (teleportStatus)
{
	obj_playerChar.x = placementLocation1[0]
	obj_playerChar.y = placementLocation1[1]
	teleportStatus = false;
}
else
{
	obj_playerChar.x = placementLocation2[0]
	obj_playerChar.y = placementLocation2[1]
	teleportStatus = true;
}


