move_x = 0;
move_y = 0;

var idle = choose(0,1);
if (idle == 0) {
	var npc_direction = choose(0,1,2,3);
	switch (npc_direction) {
		case 0:
			move_x = -speed_current;
			break;
		case 1:
			move_x = speed_current;
			break;
		case 2:
			move_y = -speed_current;
			break;
		case 3:
			move_y = speed_current;
			break;
	}
}

alarm[1] = random_range(2.5, 4) * room_speed;
