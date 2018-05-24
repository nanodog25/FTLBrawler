///@arg lane
///@arg areRightWalls

var lane = argument0;
var areRightWalls = argument1;

var laneWalls = areRightWalls ? global.LaneWallsRight : global.LaneWallsLeft;

return laneWalls[| lane];