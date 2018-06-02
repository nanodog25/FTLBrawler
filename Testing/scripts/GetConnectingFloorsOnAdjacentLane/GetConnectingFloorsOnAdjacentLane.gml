///@arg path
///@arg currentFloor
///@arg currentX
///@arg weights
///@arg nextFloorsWeighted

var path = argument0;
var currentFloor = argument1;
var currentX = argument2;
var weights = argument3;
var nextFloorsWeighted = argument4;

var targetFloor = path[| 0];
var relevantFloors = ds_list_create();

AddFloorsFromLane(relevantFloors, currentFloor._lane+1);
AddFloorsFromLane(relevantFloors, currentFloor._lane-1);

for(var i=ds_list_size(relevantFloors)-1; i>=0; i--)
{
	var flr = relevantFloors[| i];
	
	if (ds_list_find_index(path, flr) > 0
		|| GetRelativeHeight(currentFloor._y, currentFloor._lane) - GetRelativeHeight(flr._y, flr._lane) > _jumpClearance
		|| IsTooFarAway(currentFloor, flr))
		ds_list_delete(relevantFloors, i);
}

//remove any that have a wall in the way
for(var i=ds_list_size(relevantFloors)-1; i>=0; i--)
{
	var flr = relevantFloors[| i];
	if (flr != noone && IsWallBetweenFloors(currentFloor, flr))
		ds_list_delete(relevantFloors, i);
}

if (ds_list_find_index(relevantFloors, targetFloor) != -1)
{
	ds_map_add(nextFloorsWeighted, 0, targetFloor);
	ds_list_add(weights, 0);
}
else
{
	for(var i=0; i<ds_list_size(relevantFloors); i++)
	{
		var flr = relevantFloors[| i];
		var weight = 2000;
		if (abs(flr._lane - _lane) > abs(currentFloor._lane - _lane))
			weight += 500;
	
		if (x < flr._xLeft)
			weight += flr._xLeft - x;
		if (x > flr._xRight)
			weight += x - flr._xRight;
		
		if (abs(GetRelativeHeight(currentFloor._y, currentFloor._lane) - GetRelativeHeight(targetFloor._y, targetFloor._lane)) < abs(GetRelativeHeight(flr._y, flr._lane) - GetRelativeHeight(targetFloor._y, targetFloor._lane)))
			weight += 100;
		
		while(ds_list_find_index(weights, weight) != -1)
			weight++;
	
		ds_map_add(nextFloorsWeighted, weight, flr);
		ds_list_add(weights, weight);
	}
}

ds_list_destroy(relevantFloors);