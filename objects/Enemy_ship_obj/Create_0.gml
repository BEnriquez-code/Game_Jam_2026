event_inherited();

sprite_index = choose(Ship02_spr, Ship03_spr);


current_lane = clamp(round((y - 216) / 216), 0, 3);

reached_lane = true;
had_reached_lane = true;

lane_to_move_to = global.lane_positions_y[current_lane];

alarm[3] = Set_Alarm(random_range(2, 10));