_nextState = st_moveToPoint;
var lane = irandom(4);
var floors = GetFloorsInLane(lane);
		
var flr = floors[| irandom(ds_list_size(floors)-1)];
		
ai_moveX = ceil(random_range(flr._xLeft + _bbWidth/2, flr._xRight - _bbWidth/2));
if (ai_moveX < 32)
	ai_moveX = 32;
if (ai_moveX > view_wview[0]-32)
	ai_moveX = view_wview[0]-32;
ai_moveLane = lane;
ai_floor = flr;
SetPath();