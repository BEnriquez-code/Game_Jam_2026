event_inherited();

if(keyboard_check_pressed(vk_space)){
	audio_play_sound(snd_accelerate, 10, false);
}

if (keyboard_check_released(vk_space)){
	audio_stop_sound(snd_accelerate);
}

if (keyboard_check(vk_space)){
	apply_acceleration();
}
else{
	apply_drag();
}


if(keyboard_check_pressed(ord("F"))){
	audio_play_sound(snd_shooting, 10, false);
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