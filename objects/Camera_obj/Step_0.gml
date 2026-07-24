if (instance_exists(Player_obj) && global.game_state == GameState.PLAYING) {
    // Target coordinates centered on the player
    targetx = (global.players[0].x - (1920/2)) + power(global.players[0].velocity, 1/3);
	targety = 0;
	
	if(targetx > camera_get_view_width(view[0]) - global.players[0].sprite_width){
		targetx = camera_get_view_width(view[0]) - global.players[0].sprite_width;
	}
	
    // Apply the position
    camera_set_view_pos(view_camera[0], targetx, targety);
}