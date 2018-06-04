/// @arg targetLane

var targetLane = argument0;

var objName = "LaneObject" + string(targetLane);
var col = IsCollision(self, x, y-10, targetLane, objName, false);
var lenience = (_isJumping || _isFalling) ? 10 : 40;

if (col != noone && object_is_ancestor(object_index, obj_Projectile))
{
	return !col._isDestructible;
}

if (col != noone)
{
	//left of obstacle
	var overlap = bbox_right - col.bbox_left + 5;
	if (overlap <= lenience && IsCollision(self, x - overlap, y, targetLane, objName, false) == noone)
	{
		_xSwitchSpeed = IsAbilityActive(global.AbilityWormhole)
			? -overlap
			: -overlap / (global.LaneWidth/_switchSpeed);
		return false;
	}	
	
	//right of obstacle
	overlap = col.bbox_right - bbox_left + 5;
	if (overlap <= lenience && IsCollision(self, x + overlap, y, targetLane, objName, false) == noone)
	{
		_xSwitchSpeed = IsAbilityActive(global.AbilityWormhole)
			? overlap
			: overlap / (global.LaneWidth/_switchSpeed);
		return false;
	}
	return true;
}
return false;