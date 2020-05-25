move_camera = keyboard_check(vk_lshift);

if (move_camera) {
	input_left = keyboard_check(vk_left);
	input_right = keyboard_check(vk_right);
	input_up = keyboard_check(vk_up);
	input_down = keyboard_check(vk_down);
	x += (input_right - input_left) * speed_normal;
	y += (input_down - input_up) * speed_normal;
} else {
	x = clamp(x, following.x - horizontal_border, following.x + horizontal_border);
	y = clamp(y, following.y - vertical_border, following.y + vertical_border);
}

