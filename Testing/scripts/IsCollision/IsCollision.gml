///@arg obj
///@arg targetX
///@arg targetY
///@arg targetLane
///@arg collidingWith
///@arg checkLaneVariable

var obj = argument0;
var targetX = argument1;
var targetY = argument2;
var targetLane = argument3;
var collidingWith = argument4;
var checkLaneVariable = argument5;

var laneOffset = global.LaneWidth * (targetLane - obj._lane);

var xLeft = targetX - abs(obj.sprite_xoffset);
var xRight = targetX + abs(obj.sprite_width) - abs(obj.sprite_xoffset);
var yUp = targetY - obj.sprite_yoffset + laneOffset;
var yDown = targetY + obj.sprite_height - sprite_yoffset + laneOffset;

if (checkLaneVariable)
{
	var instList = collision_rectangle_list(
		xLeft + global.collisionBuffer,
		yUp + global.collisionBuffer,
		xRight - global.collisionBuffer,
		yDown - global.collisionBuffer,
		asset_get_index(collidingWith),
		true,
		true,
		obj.id);
	
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
		asset_get_index(collidingWith),
		true,
		true);
}