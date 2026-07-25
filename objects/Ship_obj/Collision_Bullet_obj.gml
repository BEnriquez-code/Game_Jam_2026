if(collidable){
	velocity /= 1.1;
	collidable = false;
	alarm[0] = Set_Alarm(3);
	// Destroy the bullet on impact
    if (instance_exists(other)) {
        instance_destroy(other);
    }
}