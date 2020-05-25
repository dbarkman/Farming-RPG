right_control_pressed = keyboard_check(vk_rcontrol);

//debug mode
k_pressed = keyboard_check_pressed(ord("K"));
if (right_control_pressed && k_pressed) {
	debug = !debug;
}

//restart game
r_pressed = keyboard_check_pressed(ord("R"));
if (right_control_pressed && r_pressed) {
	game_restart();
}

//end game
escape_pressed = keyboard_check_pressed(vk_escape);
if (escape_pressed) {
	game_end();
}