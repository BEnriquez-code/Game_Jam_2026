if (instance_exists(Player_obj) && global.gameState = GameState.PLAYING) {
    // Target coordinates centered on the player
    targetx = global.players[0].x + power(global.players[0].velocity, 1/3);
	targety = room_height / 2;
	
	if(targety > view_wport[0] - global.players[0].sprite_width){
		targety = view_wport[0] - global.players[0].sprite_width;
	}
	
    // Apply the position
    camera_set_view_pos(view_camera[0], targetx, targety);
}