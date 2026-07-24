boostable = !boostable;
if(!boostable){
	Set_Alarm(alarm[2], 1.5)
}else{
	velocity += ACCELERATION_AMOUNT / 1.6;
}