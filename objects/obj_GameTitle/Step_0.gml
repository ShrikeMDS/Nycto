/// @description Insert description here
// You can write your code in this editor
// Step Event
if (is_increasing) {
    image_alpha += blink_speed;
} else {
    image_alpha -= blink_speed;
}

// Check if the alpha value is within the valid range (0 to 1)
if (image_alpha >= 1.0) {
    image_alpha = 1.0;
    is_increasing = false;
} else if (image_alpha <= 0.0) {
    image_alpha = 0.0;
    is_increasing = true;
}
