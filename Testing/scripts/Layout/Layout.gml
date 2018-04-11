var firstLaneY = room_height - ((room_height/24)*13);
var laneWidth = room_height/8;
global.LaneYs = ds_list_create();
ds_list_add(global.LaneYs, firstLaneY, firstLaneY+laneWidth, firstLaneY+laneWidth*2, firstLaneY+laneWidth*3, firstLaneY+laneWidth*4);