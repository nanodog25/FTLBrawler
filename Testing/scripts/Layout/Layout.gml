var firstLaneY = room_height - ((room_height/24)*13);
global.LaneWidth = room_height/8;
global.LaneYs = ds_list_create();
ds_list_add(global.LaneYs, firstLaneY, firstLaneY+global.LaneWidth, firstLaneY+global.LaneWidth*2, firstLaneY+global.LaneWidth*3, firstLaneY+global.LaneWidth*4);

