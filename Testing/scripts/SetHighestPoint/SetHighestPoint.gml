var highestObject = noone;
var height = 0;

with(LaneObject)
{
	var objHeight = global.LaneWidth * _lane + _lanebbox_top;
	if (height == 0 || height < objHeight)
	{
		height = objHeight;
		highestObject = self;
	}
}

if (highestObject != noone)
{
	_moveX = highestObject.x;
	_moveY = highestObject.bbox_top;
	_moveLane = highestObject._lane;
	return true;
}

return false;