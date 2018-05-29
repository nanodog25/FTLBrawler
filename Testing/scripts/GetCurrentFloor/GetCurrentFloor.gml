var floors = GetFloorsInLane(_lane);
for (var i=0; i<ds_list_size(floors); i++)
{
	var flr = floors[| i];
	if (flr._xLeft <= x && flr._xRight >= x && flr._y == _targetGroundY)
	{
		return flr;
	}
}

return noone;