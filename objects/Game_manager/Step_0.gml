switch(global.game_state){
	case GameState.TITLE:
		
		if (keyboard_check(vk_enter)){
			global.game_state = GameState.ROOM_CHANGE;
		}
		break;
	case GameState.ROOM_CHANGE:
		room_goto(Playing_room);
		//global.game_state = GameState.STARTING;
		global.game_state = GameState.CONTROLS;
		break;
	case GameState.CONTROLS:
		countdown_timer -= 1;
		if (countdown_timer <= -game_get_speed(gamespeed_fps)) global.game_state = GameState.STARTING
		break;
		
	case GameState.STARTING:
		global.players[0] = instance_create_layer(1920.0/2, global.lane_positions_y[0], "Instances", Player_obj);
		global.players[1] = instance_create_layer(1920.0/2, global.lane_positions_y[1], "Instances", Enemy_ship_obj);
		global.players[2] = instance_create_layer(1920.0/2, global.lane_positions_y[2], "Instances", Enemy_ship_obj);
		global.players[3] = instance_create_layer(1920.0/2, global.lane_positions_y[3], "Instances", Enemy_ship_obj);
		global.game_cam = instance_create_layer(1920/2, 1080/2, "Instances", Camera_obj);
		instance_create_layer(0,0, "Instances", Asteroid_spawner_obj);
		global.game_state = GameState.PLAYING;
		break;
	case GameState.PLAYING:
		// --- Parallax Background Logic ---
        var _cam_x = camera_get_view_x(view_camera[0]);
        var _cam_h = camera_get_view_height(view_camera[0]);
		        
        var _bg_layers = ["Backgrounds_1", "Backgrounds_2", "Backgrounds_3"];
        var _parallax_factors = [0.85, 0.70, 0.50];

        for (var i = 0; i < array_length(_bg_layers); i++) {
            var _layer_id = layer_get_id(_bg_layers[i]);
            if (_layer_id != -1) {
                var _bg_element = layer_background_get_id(_layer_id);
                var _sprite_h = sprite_get_height(layer_background_get_sprite(_bg_element));
                
                if (_sprite_h > 0) {
                    var _scale = _cam_h / _sprite_h;
                    layer_background_xscale(_bg_element, _scale);
                    layer_background_yscale(_bg_element, _scale);
                }
                layer_x(_layer_id, _cam_x * _parallax_factors[i]);
            }
        }
		
		var finish_x = room_width - 64;
		
		var _place = 1;
		var _player_inst = global.players[0];
		
		with(Enemy_ship_obj){
			if (x > _player_inst.x){
				_place++;
			}
		}
		global.player_place = _place
		
		
		if (Player_obj.x >= finish_x){
			audio_stop_sound(snd_ship_idle);
			audio_stop_sound(snd_ship_accelerate);
			
			room_goto(Ending_room);
			global.game_state = GameState.END_SCREEN;
		}
		
		break;
	case GameState.DEAD:
		break;
	case GameState.END_SCREEN:
		break;
}