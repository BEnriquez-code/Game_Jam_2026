event_inherited();

if(!reached_lane){
    if(y > lane_to_move_to)
        move_up();
    else
        move_down();

    if(abs(y - lane_to_move_to) < VERTICAL_SPEED){
        y = lane_to_move_to;
        reached_lane = true;
    }
}

if(reached_lane && !had_reached_lane)
    alarm[3] = Set_Alarm(random_range(2, 10));

had_reached_lane = reached_lane;

if(velocity < 100){
	apply_acceleration();	
}