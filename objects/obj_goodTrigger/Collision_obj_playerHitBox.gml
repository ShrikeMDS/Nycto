/// @description Insert description here
// You can write your code in this editor
// In the object or event where you want to check the condition
if (array_length_1d(global.specialInventory) == 5) {
    var allTrue = true;
    for (var i = 0; i < 5; i++) {
        if (!global.specialInventory[i]) {
            allTrue = false;
            break;
        }
    }
    
    if (allTrue) {
        room_goto(rm_goodEnd);
    }
}


