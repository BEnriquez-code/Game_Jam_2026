//temporary for movement testing;
prev_game_state = global.game_state
global.game_state = GameState.PLAYING

switch(global.game_state){
	case GameState.TITLE:
		break;
	case GameState.STARTING:
				players[0] = instance_create_layer(100, global.lane_positions_y[0], "Instances", player_obj);
				players[1] = instance_create_layer(100, global.lane_positions_y[0], "Instances", enemy_ship_obj);
				players[2] = instance_create_layer(100, global.lane_positions_y[0], "Instances", enemy_ship_obj);
				players[3] = instance_create_layer(100, global.lane_positions_y[0], "Instances", enemy_ship_obj);
		global.game_state = GameState.PLAYING;
		break;
	case GameState.PLAYING:
		break;
	case GameState.DEAD:
		break;
	case GameState.END_SCREEN:
		break;
}