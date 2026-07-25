MAX_BULLETS = 3;
ACCELERATION_AMOUNT = 0.3;
VERTICAL_SPEED = 10;
DRAG = 0.988

accelerating = false;
velocity = 0.0;
slow_amount = 5;
collidable = true;
boostable = true;
bullets = MAX_BULLETS;
nearby_other_ship = collision_circle(x, y, (sprite_width/2) + 50, Player_obj, false, true);
was_nearby_other_ship = nearby_other_ship;
cast = collision_line(x,y,x + 2000,y,all,false,true)

function shoot_bullet(){
	if(bullets == 0) alarm[0] += Add_To_Alarm(3);
	else{
		bullets--;
		alarm[0] = Set_Alarm( 5);
	}
}

function apply_acceleration(){
	velocity += ACCELERATION_AMOUNT;
	accelerating = true;
}
function apply_drag(){
	velocity *= DRAG;
	accelerating = false;
}
function move_down(){
	y = clamp(y + VERTICAL_SPEED, 0, 1080 - sprite_width);
}
function move_up(){
	y = clamp(y - VERTICAL_SPEED,0, 1080-sprite_width);
}