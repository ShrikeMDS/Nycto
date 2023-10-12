/// @description Insert description here
// You can write your code in this editor

// Draw the sprite based on the current frame
if (is_moving) {
    draw_sprite(spr_playerChar, current_frame, x, y);
} else {
    draw_sprite(spr_playerChar, 0, x, y); // Draw the first frame when not moving
}


draw_sprite(spr_playerHitBox, 0, x, y); // Draw the hitbox sprite on top of the player