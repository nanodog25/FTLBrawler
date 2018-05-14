switch(_state)
{
	case st_waiting:
		var coverIndex = _isHit && !_isLaunched ? 1 : 0;
		SetNearestCover(coverIndex);
		break;
	case st_inCover:
		if (IsCoverBreached())
			SetNearestCover(0);
		else
			Pop();
		break;
	case st_popDown:
	case st_popUp:
		ShootAndDuck();
		break;
}