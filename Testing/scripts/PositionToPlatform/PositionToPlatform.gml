///@arg position

var position = argument0;

var floors = GetFloorsInLane(position._lane);
for (var i=0; i<ds_list_size(floors); i++)
{
	var flr = floors[| i];
	if (flr._xLeft <= position._x && flr._xRight >= position._x && abs(flr._y - position._y) < 50)
	{
		return flr;
	}
}

return noone;