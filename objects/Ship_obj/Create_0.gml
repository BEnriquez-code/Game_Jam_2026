velocity = 0.0;
enum ActionState{
	UP,
	DOWN,
	ACCELERATING,
	NONE
}

MAX_BULLETS = 3;
ACCELERATION_AMOUNT = 0.3;
VERTICAL_SPEED = 10;
DRAG = 0.988;
current_state = ActionState.NONE;
collidable = true;
boostable = true;
bullets = MAX_BULLETS;
nearby_other_ship = collision_circle(x, y, (sprite_width/2) + 50, Player_obj, false, true);
was_nearby_other_ship = nearby_other_ship;

function shoot_bullet(){
	if(bullets == 0) Add_To_Alarm(alarm[1], 3);
	else{
		bullets--;
		Set_Alarm(alarm[0], 5);
	}
}
function apply_acceleration(){
	velocity += ACCELERATION_AMOUNT;
}
function move_up(){
	y = clamp(y - VERTICAL_SPEED,0,1080 - sprite_height);

}
function move_down(){
	y = clamp(y + VERTICAL_SPEED,0,1080 - sprite_height);
}
function apply_drag(){
	velocity *= DRAG;
}