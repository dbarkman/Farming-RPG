var animation_length = 9;
var animation_speed = 12;
var frame_size = 64;
var frames_per_second = 60;
var xx = x - x_offset;
var yy = y - y_offset;

if (x_frame + animation_speed / frames_per_second < animation_length) {
	x_frame += animation_speed / frames_per_second;
} else {
	x_frame = 0;
}

if (move_x < 0) {
	y_frame = 9;
} else if (move_x > 0) {
	y_frame = 11;
} else if (move_y < 0) {
	y_frame = 8;
} else if (move_y > 0) {
	y_frame = 10;
} else {
	x_frame = 0;
}

draw_sprite_part(sprite_base, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(sprite_feet, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(sprite_legs, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(sprite_torso, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);
//draw_sprite_part(sprite_hair, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, xx, yy);

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);