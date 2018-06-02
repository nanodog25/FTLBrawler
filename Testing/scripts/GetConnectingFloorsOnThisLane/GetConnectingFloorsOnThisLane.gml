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
ds_list_copy(relevantFloors, GetFloorsInLane(currentFloor._lane));

//remove any that overlap, are too high or far away or wrong direction
for(var i=ds_list_size(relevantFloors)-1; i>=0; i--)
{
	var flr = relevantFloors[| i];
	if (ds_list_find_index(path, flr) > 0
		|| flr._y - currentFloor._y > _jumpClearance
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
		if (flr._lane != _lane)
			weight += 200;
	
		weight += abs(x - flr._xLeft);
		weight += abs(x - flr._xRight);
	
		if (abs(currentFloor._y - targetFloor._y) < abs(flr._y - targetFloor._y))
			weight += 100;
	
		while(ds_list_find_index(weights, weight) != -1)
			weight++;
	
		ds_map_add(nextFloorsWeighted, weight, flr);
		ds_list_add(weights, weight);
	}
}

ds_list_destroy(relevantFloors);