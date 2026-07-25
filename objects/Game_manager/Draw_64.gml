if (global.game_state == GameState.TITLE){
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 3, "Game Title");
	draw_text(room_width / 2, room_height / 2, "Press Enter to Start");
}

if (room == Playing_room && global.game_state == GameState.CONTROLS){
	
var gui_height = display_get_gui_height();
	var gui_width = display_get_gui_width();
	
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