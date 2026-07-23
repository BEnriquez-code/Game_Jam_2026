//Define lanes for y-axis
lane_positions_y = [200, 300, 350, 500]; // Bottom, Middle_1, Middle_2, Top
//Setup Racers Array of Structs
//Placeholders
racers = [
	{id: "Player", current_lane: 1, x: 100, y: lane_positions_y[0]},
	{id: "AI_1", current_lane: 0, x : 200, y: lane_positions_y[1]},
	{id: "AI_2", current_lane: 1, x : 300, y: lane_positions_y[2]},
	{id: "AI_3", current_lane: 2, x : 400, y: lane_positions_y[3]}
]

