var gui_height = display_get_gui_height();
var gui_width = display_get_gui_width();

if (global.game_state == GameState.TITLE){
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 3, "Game Title");
	draw_text(room_width / 2, room_height / 2, "Press Enter to Start");
	
}
else if (room == Playing_room && global.game_state == GameState.CONTROLS){
	
	
	draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_width, gui_height, false);
    draw_set_alpha(1.0);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
	
	draw_text(gui_width / 2, gui_height / 2 - 60, "How To Play");
    draw_text(gui_width / 2, gui_height / 2 - 20, "W, S: Move UP and DOWN");
    draw_text(gui_width / 2, gui_height / 2 + 10, "SPACEBAR to boost");
	
	var seconds_left = ceil(countdown_timer / game_get_speed(gamespeed_fps));
	
	var countdown_text = "";
    
    switch (seconds_left) {
        case 3:
            countdown_text = "3";
            break;
        case 2:
            countdown_text = "2";
            break;
        case 1:
            countdown_text = "1";
            break;
        default:
            if (countdown_timer <= 0) {
                countdown_text = "GO!";
            }
            break;
	}
	
	var scale = 10 + (countdown_timer % game_get_speed(gamespeed_fps)) / game_get_speed(gamespeed_fps);
	draw_text_transformed(gui_width / 2, gui_height / 2 + 80, countdown_text, scale, scale, 0);
	
	draw_text_transformed(gui_width / 2, gui_height / 2 + 80, countdown_text, scale, scale, 0);
	draw_set_halign(fa_center);
}
else if(global.game_state == GameState.PLAYING){
    for(i = 1; i < global.players[0].bullets + 1; i++){
        draw_sprite(Bullet_spr, -1, 30, i * 20);
    }
}
else if (global.game_state == GameState.PLAYING || global.game_state == GameState.END_SCREEN){
	draw_set_color(c_white);
	
	var _suffixes = ["st", "nd", "rd", "th"];
	var _suffix = _suffixes[clamp(global.player_place - 1, 0, 3)];
	
	var _text = "Position: " + string(global.player_place) + _suffix;
	
	draw_text(64, 32, _text);
}