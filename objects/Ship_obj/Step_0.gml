//Checks the state of the ship and applies movement
switch(current_state){
	case ActionState.UP:
		y -= 10;
		break;
	case ActionState.DOWN:
		y += 10;
		break;
	case ActionState.ACCELERATING:
		velocity += 10;
		break;
	case ActionState.NONE:
		velocity -= 1;
		break;
}

x += velocity;