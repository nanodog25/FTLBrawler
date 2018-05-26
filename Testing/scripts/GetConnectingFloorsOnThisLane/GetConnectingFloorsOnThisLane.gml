///@arg path
///@arg xTarget
///@arg rightDirectionOnly

var path = argument0;
var xTarget = argument1;
var rightDirectionOnly = argument2;

var lastFloor = path[| ds_list_size(path)-1];

var relevantFloors = ds_list_create();
ds_list_copy(relevantFloors, GetFloorsInLane(lastFloor._lane));

//remove any that overlap, are too high or far away or wrong direction
for(var i=0; i<ds_list_size(relevantFloors); i++)
{
	var flr = relevantFloors[| i];
	if (ds_list_find_index(path, flr) != -1
		|| lastFloor._y - flr._y > _maxJumpHeight
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