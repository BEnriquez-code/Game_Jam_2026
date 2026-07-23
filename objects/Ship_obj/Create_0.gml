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

function shoot_bullet(){
	if(bullets = 0) Add_To_Alarm(Alarm[1], 3);
	else{
		bullets--;
		Set_Alarm(Alarm[0], 5);
	}
}