
x += velocity;

was_nearby_other_ship = nearby_other_ship;
nearby_other_ship = collision_circle(x, y, (sprite_width/2) + 50, Player_obj, false, true);

if(nearby_other_ship && !was_nearby_other_ship && boostable){
	Set_Alarm(Alarm[2], .5)
}