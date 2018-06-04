if (ai_startFloor == noone)
{
	ai_startFloor = GetCurrentFloor();
	ai_floor = ai_startFloor;
	ai_coverObj = ai_floor;
}

switch(_state)
{
	case st_waiting:
		if (ai_floor != ai_startFloor)
		{
			SetAIPosition(ai_startFloor, noone);
			SetPath();
			_nextState = st_moveToPoint;
		}
		else if (IsCoverBreached())
			RandomPosition();
		break;
	case st_inCover:
		if (IsCoverBreached())
			_nextState = st_waiting;
		else if (stb_isHit)
			SetNearestCover(irandom(2) + 1);
		else
			Pop();
		break;
	case st_popDown:
	case st_popUp:
		ShootAndDuck();
		break;
}

stb_isHit = false;