event_inherited();

if (keyboard_check_released(vk_space)){
	audio_stop_sound(snd_ship_accelerate);
}

if (keyboard_check(vk_space)){
	audio_stop_sound(snd_ship_idle);
	
	if(!audio_is_playing(snd_ship_accelerate)){
		audio_play_sound(snd_ship_accelerate, 3, true);
	}
	
	apply_acceleration();
}
else{
	
	if(!audio_is_playing(snd_ship_idle)){
		audio_play_sound(snd_ship_idle, 3, true);
	}
	
	apply_drag();
	
}


if(keyboard_check_pressed(ord("F"))){
	shoot_bullet();
}
if(keyboard_check(ord("W")) && keyboard_check(ord("S"))){
	
}
else if(keyboard_check(ord("S"))){
	move_down();
}
else if(keyboard_check(ord("W"))){
	move_up();
}