if (global.game_state == GameState.PLAYING){
	var finish_x = room_width - 64;
	
	draw_set_color(c_yellow);
	draw_set_alpha(0.3 * (global.finish_signal_intensity * 0.7));
	
	draw_line_width(finish_x, 0, finish_x, room_height, 800);
	
	draw_set_alpha(1.0);
	draw_set_color(c_white);
}