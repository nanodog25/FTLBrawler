///@arg wall

var wall = argument0;
var floors = GetFloorsInLane(wall._lane);

for(var i=0; i<ds_list_size(floors); i++)
{
	var flr = floors[| i];
	if (flr._y == wall._yBase && (flr._xLeft - wall._x == 1 || wall._x - flr._xRight == 1))
		return flr;
}
return noone;