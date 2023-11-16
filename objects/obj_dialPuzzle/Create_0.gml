/// @description Insert description here
// You can write your code in this editor

puzzleSoultion = [2, 2, 2, 2];
solved = false;
active = false;
if (room == rm_level3)
{
	puzzleSoultion = [2, 4, 6, 3];
}
if (room == rm_level5)
{
	puzzleSoultion = [1, 3, 4, 2];
}

playerInput = [1, 1, 1, 1];

function arraysAreEqual(arr1, arr2)
{
    if (array_length(arr1) != 4 || array_length(arr2) != 4)
    {
        return false;
    }

    for (var i = 0; i < 4; i++)
    {
        if (arr1[i] != arr2[i])
        {
            return false;
        }
    }

    visible = false;
    // Play Scratch Sound
    solved = true;
    active = false;

    return true;
}
visible = false;