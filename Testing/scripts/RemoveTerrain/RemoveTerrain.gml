//iterate walls backwards, delete
//set floor to baseY

var newFloorY = noone;

var walls1 = GetWallsInLane(_lane, true);
var walls2 = GetWallsInLane(_lane, false);
var floors = GetFloorsInLane(_lane);

for(var i=ds_list_size(walls1)-1; i>=0; i--)
{
	var wall = walls1[| i];
	if (wall._obj = self)
	{
		if (newFloorY == noone || wall._yBase > newFloorY)
			newFloorY = wall._yBase;
		ds_list_delete(walls1, i);
	}
}

for(var i=ds_list_size(walls2)-1; i>=0; i--)
{
	var wall = walls2[| i];
	if (wall._obj = self)
	{
		if (newFloorY == noone || wall._yBase > newFloorY)
			newFloorY = wall._yBase;
		ds_list_delete(walls1, i);
	}
}

for(var i=ds_list_size(floors)-1; i>=0; i--)
{
	var flr = floors[| i];
	if (flr._obj = self)
		flr._y = newFloorY;
}