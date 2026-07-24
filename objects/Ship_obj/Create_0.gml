enum ActionState{
	UP,
	DOWN,
	ACCELERATING,
	NONE
}

MAX_BULLETS = 3;
ACCELERATION_AMOUNT = 10;

velocity = 0.0;
current_state = ActionState.NONE;
slow_amount = 5;
collidable = true;
boostable = true;
bullets = MAX_BULLETS;
nearby_other_ship = collision_circle(x, y, (sprite_width/2) + 50, obj_wall, false, true);
was_nearby_other_ship = nearby_other_ship;

function shoot_bullet(){
	if(bullets = 0) Add_To_Alarm(alarm[1], 3);
	else{
		bullets--;
		Set_Alarm(alarm[0], 5);
	}
}