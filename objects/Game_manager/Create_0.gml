//Define lanes for y-axis
global.lane_positions_y = [216, 432, 648, 864]; // Bottom, Middle_1, Middle_2, Top

players = []

//Deffinition for game state
global.game_state = GameState.TITLE;
prev_game_state = global.game_state;

global.state_changed = prev_game_state != global.game_state;