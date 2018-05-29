///@arg coverIndex

if (ds_list_empty(global.objectsInView))
	return;

var coverIndex = argument0;

var areRightWalls = global.playerX < x;

var wall = GetNearestWall(areRightWalls, _bbWidth/2+5, coverIndex);

if (wall == noone)
{
	areRightWalls = !areRightWalls;
	wall = GetNearestWall(areRightWalls, _bbWidth/2+5, 0);
}

if (wall != noone)
{
	ai_moveX = areRightWalls
		? wall._x + _bbWidth/2+5
		: wall._x - _bbWidth/2-5;
	ai_moveLane = wall._lane;
	ai_coverObj = wall._obj;
	ai_floor = GetAdjoiningFloor(wall);
	_nextState = st_moveToCover;
	
	SetPath();
}