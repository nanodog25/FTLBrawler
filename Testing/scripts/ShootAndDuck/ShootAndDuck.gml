if (_ySwitch == 0)
{
	if (_canFire)
	{
		ai_fire = true;
	}
	else if (_state == st_popDown && IsPopSpace(ai_floor, "down"))
	{
		ai_moveUp = true;
		_nextState = st_inCover;
	}
	else if (_state == st_popUp && IsPopSpace(ai_floor, "up"))
	{
		ai_moveDown = true;
		_nextState = st_inCover;
	}
}