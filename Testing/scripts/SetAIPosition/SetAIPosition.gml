///@arg floor
///@arg x

var flr = argument0;
var xVal = argument1;

ai_floor = flr;
ai_moveLane = ai_floor._lane;
ai_moveX = xVal == noone
	? RandomFloorPosition(ai_floor)
	: xVal;