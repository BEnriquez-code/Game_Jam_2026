//temporary for movement testing;
prev_game_state = global.game_state


switch(global.game_state){
	case GameState.TITLE:
		break;
	case GameState.ROOM_CHANGE:
		room_goto(Playing_room);
		global.game_state = GameState.CONTROLS;
		break;
	case GameState.CONTROLS:
		countdown_timer -= 1;
		if (countdown_timer <= -game_get_speed(gamespeed_fps)) global.game_state = GameState.STARTING
		break;
	case GameState.STARTING:
		
		global.players[0] = instance_create_layer(1920.0/2, global.lane_positions_y[0], "Instances", Player_obj);
		global.players[1] = instance_create_layer(1920.0/2, global.lane_positions_y[1], "Instances", Enemy_ship_obj);
		global.players[2] = instance_create_layer(1920.0/2, global.lane_positions_y[2], "Instances", Enemy_ship_obj);
		global.players[3] = instance_create_layer(1920.0/2, global.lane_positions_y[3], "Instances", Enemy_ship_obj);
		global.game_cam = instance_create_layer(1920/2, 1080/2, "Instances", Camera_obj);
		
		global.game_state = GameState.PLAYING;
		break;
	case GameState.PLAYING:
		
		break;
	case GameState.DEAD:
		break;
	case GameState.END_SCREEN:
		break;
}