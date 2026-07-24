new_lane = irandom(3);

while(new_lane == current_lane)
    new_lane = irandom(3);

current_lane = new_lane;
lane_to_move_to = global.lane_positions_y[current_lane];

reached_lane = false;

show_debug_message(
    "Changing lane from " 
    + string(current_lane) 
    + " to " 
    + string(new_lane)
);