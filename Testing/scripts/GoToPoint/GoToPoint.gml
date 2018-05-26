switch(_state)
{
	case st_waiting:
		_nextState = st_moveToPoint;
		ai_moveX = 1200;
		//ai_moveY = wall._yBase;
		ai_moveLane = 0;
		var floors = GetFloorsInLane(0);
		ai_floor = floors[| 0];
		SetPath();
		break;
}

st_Hit = false;