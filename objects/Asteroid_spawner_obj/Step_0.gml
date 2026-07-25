for(i = 0; i < 4; i ++){
	if(global.players[i].x > max_x) { max_x = global.players[i].x; max_vol = global.players[i].velocity; }
	if(global.players[i].x < min_x)min_x = global.players[i].x;
}