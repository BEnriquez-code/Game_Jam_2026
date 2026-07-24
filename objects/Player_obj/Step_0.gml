event_inherited();

if(keyboard_check(vk_space)){
	apply_acceleration();
}
else{
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