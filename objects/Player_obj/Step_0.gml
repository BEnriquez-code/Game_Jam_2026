event_inherited();

if(keyboard_check(vk_space)){
	current_state = ActionState.ACCELERATING;
}
if(keyboard_check(ord("W"))){
	current_state = ActionState.UP;
}
if(keyboard_check(ord("S"))){
	current_state = ActionState.DOWN;
}
if(keyboard_check_pressed(ord("F"))){
	shoot_bullet()
}