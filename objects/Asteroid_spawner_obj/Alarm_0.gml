if(global.game_state = GameState.PLAYING){
	instance_create_layer(max_x + 1920, 0, "Instances", Asteroid_obj);
	alarm[0] = Set_Alarm(base_time / max(abs(velocity), 1));
}