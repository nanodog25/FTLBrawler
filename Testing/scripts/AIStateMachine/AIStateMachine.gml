switch(_state)
{
	case st_waiting:
		SetNearestCover(0);
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

st_Hit = false;