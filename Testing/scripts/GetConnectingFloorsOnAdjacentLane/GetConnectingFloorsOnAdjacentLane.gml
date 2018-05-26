///@arg path
///@arg xTarget
///@arg laneTarget
///@arg rightDirectionOnly

var path = argument0;
var xTarget = argument1;
var laneTarget = argument2;
var rightDirectionOnly = argument3;

var lastFloor = path[| ds_list_size(path)-1];
var relevantFloors = ds_list_create();

if (rightDirectionOnly)
{
	if (lastFloor._lane < laneTarget)
		AddFloorsFromLane(relevantFloors, lastFloor._lane+1);
	else if (lastFloor._lane > laneTarget)
		AddFloorsFromLane(relevantFloors, lastFloor._lane-1);
}
else
{
	AddFloorsFromLane(relevantFloors, lastFloor._lane+1);
	AddFloorsFromLane(relevantFloors, lastFloor._lane-1);
}

for(var i=0; i<ds_list_size(relevantFloors); i++)
{
	var flr = relevantFloors[| i];
	
	if (lastFloor._lane == 4)
		var a = 10;
	
	if (ds_list_find_index(path, flr) != -1
		|| GetRelativeHeight(flr._y, flr._lane) - GetRelativeHeight(lastFloor._y, lastFloor._lane) > _maxJumpHeight
		|| (rightDirectionOnly && !IsRightDirection(lastFloor, flr, xTarget))
		|| IsTooFarAway(lastFloor, flr))
		ds_list_replace(relevantFloors, i, noone);
}

//remove any that have a wall in the way
for(var i=0; i<ds_list_size(relevantFloors); i++)
{
	var flr = relevantFloors[| i];
	if (flr != noone && IsWallBetweenFloors(lastFloor, flr))
		ds_list_replace(relevantFloors, i, noone);
}

var returnFloors = ds_list_create();
for(var i=0; i<ds_list_size(relevantFloors); i++)
{
	var flr = relevantFloors[| i];
	if (flr != noone)
		ds_list_add(returnFloors, flr);
}

ds_list_destroy(relevantFloors);

if (ds_list_empty(returnFloors))
	returnFloors = noone;

return returnFloors;