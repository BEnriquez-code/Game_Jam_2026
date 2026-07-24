//temporary for movement testing;
prev_game_state = global.game_state


switch(global.game_state){
	case GameState.TITLE:
		break;
	case GameState.STARTING:
				global.players[0] = instance_create_layer(1920/2, global.lane_positions_y[0], "Instances", Player_obj);
				global.players[1] = instance_create_layer(1920/2, global.lane_positions_y[0], "Instances", Enemy_ship_obj);
				global.players[2] = instance_create_layer(1920/2, global.lane_positions_y[0], "Instances", Enemy_ship_obj);
				global.players[3] = instance_create_layer(1920/2, global.lane_positions_y[0], "Instances", Enemy_ship_obj);
				camera_set_view_pos(view_camera[0], 1920/2, 1080/2);
				show_debug_message("players created");
				show_debug_message(instance_number(Player_obj));
				show_debug_message(instance_number(Enemy_ship_obj));
		global.game_state = GameState.PLAYING;
		break;
	case GameState.PLAYING:
		break;
	case GameState.DEAD:
		break;
	case GameState.END_SCREEN:
		break;
}