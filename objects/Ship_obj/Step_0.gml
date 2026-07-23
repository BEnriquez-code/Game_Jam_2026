//Checks the state of the ship and applies movement
switch(current_state){
	case ActionState.UP:
		y -= 10;
		break;
	case ActionState.DOWN:
		y += 10;
		break;
	case ActionState.ACCELERATING:
		velocity += ACCELERATION_AMOUNT;
		break;
	case ActionState.NONE:
		velocity -= 1;
		break;
}
x += velocity;

was_nearby_other_ship = nearby_other_ship;
nearby_other_ship = collision_circle(x, y, (sprite_width/2) + 50, obj_wall, false, true);

if(nearby_other_ship && !was_nearby_other_ship && boostable){
	Set_Alarm(Alarm[2], .5)
}