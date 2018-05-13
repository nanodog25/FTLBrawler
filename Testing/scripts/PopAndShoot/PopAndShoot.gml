if (!_isMoving)
{
	if (_state == "" && _canFire)
	{
		var diff = global.playerLane - _lane;
		var above = diff == -1;
		var below = diff == 1;
	
		if (above)
		{
			ai_moveUp = true;
			_state = "pop";
		}
		else if (below)
		{
			ai_moveDown = true;
			_state = "pop";
		}
	}
	else if (_state == "pop")
	{
		ai_fire = true;
		_state = "fire";
	}
	else if (_state == "fire")
	{
		_state = "";
	}
}