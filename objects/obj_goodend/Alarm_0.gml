/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.01; // Adjust the increment for a smoother or faster appearance

if (image_alpha >= 1.0) {
    image_alpha = 1.0;
    alarm[0] = -1; // Disable the alarm when fully visible
}