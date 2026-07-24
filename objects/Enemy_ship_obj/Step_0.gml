event_inherited();

if(abs(y - lane_to_move_to) < 11)
    reached_lane = true;

if(reached_lane && !had_reached_lane)
    alarm[3] = Set_Alarm(random_range(2, 10));

if(!reached_lane){
    if(y > lane_to_move_to)
        move_down();
    else
        move_up();
}
had_reached_lane = reached_lane;