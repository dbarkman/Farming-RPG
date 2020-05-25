//check inputs
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_walk = keyboard_check(vk_lcontrol);
input_run = keyboard_check(vk_shift);

//set speed based on inputs
speed_current = speed_normal;
if (input_walk) {
	speed_current = speed_walk;
} else if (input_run) {
	speed_current = speed_run;
}

//check for direction
move_x = 0;
move_x = (input_right - input_left) * speed_current;
move_y = 0;
move_y = (input_down - input_up) * speed_current;

//check for horizontal collisions
if (move_x != 0) {
	if (place_meeting(x + move_x, y, object_wall)) {
		while (!place_meeting(x + sign(move_x), y, object_wall)) {
			x += sign(move_x);
		}
		move_x = 0;
	}
}
x += move_x;

//check for vertical collisions
if (move_y != 0) {
	if (place_meeting(x, y + move_y, object_wall)) {
		while (!place_meeting(x, y + sign(move_y), object_wall)) {
			y += sign(move_y);
		}
		move_y = 0;
	}
}
y += move_y;
