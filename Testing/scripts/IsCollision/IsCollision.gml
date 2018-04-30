///@arg currentLane
///@arg targetLane
///@arg objName
///@arg checkLaneVariable

var currentLane = argument0;
var targetLane = argument1;
var objName = argument2;
var checkLaneVariable = argument3;

var laneOffset = global.LaneWidth * (targetLane - currentLane);

var xLeft = x - abs(sprite_xoffset);
var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
var yUp = y - sprite_yoffset + laneOffset;
var yDown = y + sprite_height - sprite_yoffset + laneOffset;

if (checkLaneVariable)
{
	var instList = collision_rectangle_list(
		xLeft + global.collisionBuffer,
		yUp + global.collisionBuffer,
		xRight - global.collisionBuffer,
		yDown - global.collisionBuffer,
		asset_get_index(objName),
		true,
		true);
	
	if (instList != noone)
	{
		for(var i = 0; i < ds_list_size(instList); i++)
		{
			var inst = instList[| i];
			if (targetLane == inst._lane)
			{
				instList = noone;
				return true;
			}
		}
		instList = noone;
	}
	return false;
}
else
{
	return collision_rectangle(
		xLeft + global.collisionBuffer,
		yUp + global.collisionBuffer,
		xRight - global.collisionBuffer,
		yDown - global.collisionBuffer,
		asset_get_index(objName),
		true,
		true);
}