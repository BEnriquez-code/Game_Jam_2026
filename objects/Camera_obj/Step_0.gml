if (instance_exists(obj_player) && global.gameState = GameState.PLAYING) {
    // Target coordinates centered on the player
    targetx = player_obj.x + power(player_obj.velocity, 1/3);
	targety = room_height / 2;
	
	if(targety > view_wport[0] - player_obj.sprite_width){
		targety = view_wport[0] - player_obj.sprite_width;
	}
	
    // Apply the position
    camera_set_view_pos(view_camera[0], targetx, targety);
}