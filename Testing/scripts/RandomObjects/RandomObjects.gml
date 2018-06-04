switch(_state)
{
	case st_waiting:
		
		if (_stateTimer > 1)
		{
			RandomPosition();
		}
		break;
}

stb_isHit = false;