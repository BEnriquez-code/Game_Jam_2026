//Define lanes for y-axis
global.lane_positions_y = [216, 432, 648, 864]; // Top, Middle_1, Middle_2, Bottom

global.players[4] = []

randomize();

//Deffinition for game state
global.game_state = GameState.TITLE //temp set, should be title when done
prev_game_state = global.game_state;
global.state_changed = prev_game_state != global.game_state;
audio_channel_num(32);
audio_play_sound(snd_background_music, 1, false);
