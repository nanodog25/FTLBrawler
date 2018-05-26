///@arg currentFloors
///@arg lane

var currentFloors = argument0;
var lane = argument1;

if (lane < 0 || lane > 4)
	return;

var floors = GetFloorsInLane(lane);

for(var i=0; i<ds_list_size(floors); i++)
{
	ds_list_add(currentFloors, floors[| i]);
}