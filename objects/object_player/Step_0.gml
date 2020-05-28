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

if (move_x != 0) {
	switch(sign(move_x)) {
		case 1:
			facing = direction_facing.right;
			break;
		case -1:
			facing = direction_facing.left;
			break;
	}
} else if (move_y != 0) {
	switch(sign(move_y)) {
		case 1:
			facing = direction_facing.down;
			break;
		case -1:
			facing = direction_facing.up;
			break;
	}
} else {
	facing = -1;
}

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

var transition_instance = instance_place(x, y, object_transition);
if (transition_instance != noone && facing == transition_instance.player_facing_before) {
	with(game) {
		if (!do_transition) {
			spawn_room = transition_instance.targetRoom;
			spawn_x = transition_instance.target_x;
			spawn_y = transition_instance.target_y;
			spawn_player_facing = transition_instance.player_facing_after;
			do_transition = true;
		}
	}
}
