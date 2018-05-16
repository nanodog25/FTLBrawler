var highestObject = noone;
var height = 0;

for (var i=0; i<ds_list_size(global.objectsInView); i++)
{
	var obj = global.objectsInView[| i];
	if (!instance_exists(obj))
		continue;
		
	var objHeight = global.LaneWidth * obj._lane + obj.bbox_top;
	if (height == 0 || height < objHeight)
	{
		height = objHeight;
		highestObject = obj;
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