if (spawn_room == -1) exit;
object_player.x = spawn_x;
object_player.y = spawn_y;
object_player.facing = spawn_player_facing;

with(object_player) {
	switch(facing) {
		case direction_facing.left: 
			y_frame = 9;
			break;
		case direction_facing.right: 
			y_frame = 11;
			break;
		case direction_facing.up: 
			y_frame = 8;
			break;
		case direction_facing.down: 
			y_frame = 10;
			break;
		case -1:
			x_frame = 0;
			break;
	}
}