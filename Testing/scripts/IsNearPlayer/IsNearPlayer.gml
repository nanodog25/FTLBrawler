return _lane == global.playerLane && _direction == sign(global.playerX - x) && abs(x - global.playerX) < 128;