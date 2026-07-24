boostable = !boostable;
if(!boostable){
	alarm[2] = Set_Alarm(1.5)
}else{
	velocity += ACCELERATION_AMOUNT / 1.6;
}