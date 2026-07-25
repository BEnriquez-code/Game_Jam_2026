x += velocity;

was_nearby_other_ship = nearby_other_ship;
nearby_other_ship = collision_circle(x, y, (sprite_width/2) + 50, Player_obj, false, true);

if(nearby_other_ship && !was_nearby_other_ship && boostable){
	alarm[2] = Set_Alarm(0.5)
}

cast = collision_line(x,y,x + 2000,y,all,false,true)

if(cast != noone){
	if((cast.object_index == Player_obj || cast.object_index == Enemy_ship_obj) && accelerating == true){
		velocity += 0.05;
	}
}