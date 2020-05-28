//get a new seed every time the game starts
randomize();
room_goto_next();

debug = false;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

black_alpha = 0;

spawn_room = -1;
spawn_x = 0;
spawn_y = 0;
spawn_player_facing = -1;

do_transition = false;

enum direction_facing {
	right = 0,
	up = 90,
	left = 180,
	down = 270
}
