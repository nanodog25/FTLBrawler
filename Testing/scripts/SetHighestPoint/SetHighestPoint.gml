var highestObject = noone;
var height = 0;

with(LaneObject)
{
	var objHeight = global.LaneWidth * _lane + bbox_top;
	if (height == 0 || height < objHeight)
	{
		height = objHeight;
		highestObject = self;
	}
}

if (highestObject != noone)
{
	ai_moveX = highestObject.x;
	ai_moveY = highestObject.bbox_top;
	ai_moveLane = highestObject._lane;
	return true;
}

return false;