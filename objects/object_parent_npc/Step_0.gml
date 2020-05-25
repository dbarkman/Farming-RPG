
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
