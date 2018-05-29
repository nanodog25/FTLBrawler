///@arg floor
///@arg direction

var flr = argument0;
var dir = argument1;

var lane = dir == "up" ? flr._lane-1 : flr_lane+1;

var floors = GetFloorsInLane(lane);

for(var i=0; i<ds_list_size(floors); i++)
{
	if (floors[| i]._y == flr._y)
		return true;
}

return false;