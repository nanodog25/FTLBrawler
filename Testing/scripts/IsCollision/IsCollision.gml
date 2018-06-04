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
var collidingWith = asset_get_index(argument4) != -1 ? asset_get_index(argument4) : argument4;
var checkLaneVariable = argument5;

var laneOffset = global.LaneWidth * (targetLane - obj._lane);
var bbHalfWidth = (obj.bbox_right - obj.bbox_left)/2;

var xLeft = targetX - bbHalfWidth;
var xRight = targetX + bbHalfWidth;
var yUp = targetY - obj.sprite_yoffset + laneOffset;
var yDown = targetY + obj.sprite_height - sprite_yoffset + laneOffset;

if (checkLaneVariable)
{
	var instList = collision_rectangle_list(
		xLeft,
		yUp + global.collisionBuffer,
		xRight,
		yDown - global.collisionBuffer,
		collidingWith,
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
	var buffer = object_is_ancestor(obj.object_index, obj_Projectile) ? 0 : global.collisionBuffer;
	
	return collision_rectangle(
		xLeft,
		yUp + buffer,
		xRight,
		yDown - buffer,
		collidingWith,
		true,
		true);
}