//Define lanes for y-axis
global.lane_positions_y = [216, 432, 648, 864]; // Bottom, Middle_1, Middle_2, Top
room_set_width(Playing_room, 10000);
room_set_height(Playing_room, 1080);

global.players[4] = []

//Definition for game state
global.game_state = GameState.TITLE //temp set, should be title when done
prev_game_state = global.game_state;
global.state_changed = prev_game_state != global.game_state;