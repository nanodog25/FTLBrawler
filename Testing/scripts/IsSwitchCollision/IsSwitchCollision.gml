/// @arg direction

var dir = argument0;

var targetLane = dir == "up"
	? _lane-1
	: _lane+1;

var objName = "LaneObject" + string(targetLane);
var col = IsCollision(self, x, y, targetLane, objName, false);
var lenience = 40;

if (col != noone && object_is_ancestor(object_index, obj_proj_Projectile))
{
	return !col._isDestructible;
}

if (col != noone)
{
	//left of obstacle
	var overlap = bbox_right - col.bbox_left + 5;
	if (overlap <= lenience && IsCollision(self, x - overlap, y, targetLane, objName, false) == noone)
	{
		if (_xSpeed >= 0)
			_xSpeed = -overlap / (global.LaneWidth/_switchSpeed);
		return false;
	}	
	overlap = col.bbox_right - bbox_left + 5;
	if (overlap <= lenience && IsCollision(self, x + overlap, y, targetLane, objName, false) == noone)
	{
		if (_xSpeed <= 0)
			_xSpeed = overlap / (global.LaneWidth/_switchSpeed);
		return false;
	}
	return true;
}
return false;