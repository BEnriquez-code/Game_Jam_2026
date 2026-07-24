event_inherited();
if(keyboard_check(vk_space)){
	action_state = ActionState.ACCELERATING;
}
if(keyboard_check(ord("W"))){
	action_state = ActionState.UP;
}
if(keyboard_check(ord("S"))){
	action_state = ActionState.DOWN;
}
if(keyboard_check_pressed(ord("F"))){
	shoot_bullet()
}