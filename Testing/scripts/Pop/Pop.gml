if (_canFire)
{
	var diff = global.playerLane - _lane;
	var above = diff == -1;
	var below = diff == 1;
	
	if (above)
	{
		ai_moveUp = true;
		_nextState = st_popUp;
	}
	else if (below)
	{
		ai_moveDown = true;
		_nextState = st_popDown;
	}
}