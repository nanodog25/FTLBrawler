///@arg coverIndex

if (ds_list_empty(global.objectsInView))
	return;

var coverIndex = argument0;

var areRightWalls = global.playerX < x;
var bbWidth = bbox_right - bbox_left;

var wall = GetNearestWall(areRightWalls, bbWidth, coverIndex);

if (wall == noone)
{
	areRightWalls = !areRightWalls;
	wall = GetNearestWall(areRightWalls, bbWidth, 0);
}

if (wall != noone)
{
	ai_moveX = areRightWalls
		? wall._x + bbWidth
		: wall._x - bbWidth;
	ai_moveY = 0;
	ai_moveLane = wall._lane;
	ai_coverObj = wall._obj;
	_nextState = st_moveToCover;
}