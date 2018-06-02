if (_ySwitch == 0)
{
	if (_canFire)
	{
		ai_fire = true;
	}
	else if (_state == st_popDown)
	{
		_direction = !_direction;
		ai_moveUp = true;
		_nextState = st_inCover;
	}
	else if (_state == st_popUp)
	{
		_direction = !_direction;
		ai_moveDown = true;
		_nextState = st_inCover;
	}
}