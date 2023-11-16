/// @description Insert description here
// You can write your code in this editor

if (array_length_1d(global.specialInventory) == 5) {
    var allTrue = true;
    for (var i = 0; i < 5; i++) {
        if (!global.specialInventory[i]) {
            allTrue = false;
            break;
        }
    }
    
    if (allTrue && !showing) {
        showing = true;
        alarm[0] = showSpeed;
    }
}