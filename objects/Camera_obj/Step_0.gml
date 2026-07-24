if (instance_exists(Player_obj) && global.game_state == GameState.PLAYING) {
    // Target coordinates centered on the player
	maxLead = 1920 / 2;
	lead = min(power(max(global.players[0].velocity, 0), 0.5) * 50, maxLead);
	
    targetx = (global.players[0].x - (1920/2)) + lead;
	targety = 0;
	
    // Apply the position
    camera_set_view_pos(view_camera[0], targetx, targety);

	show_debug_message("vel: " + string(global.players[0].velocity));
	show_debug_message("lead: " + string(lead));
	show_debug_message("targetx: " + string(targetx))
}

