var firstLaneY = 32 * 13.5;
global.LaneWidth = 32 * 3;
global.LaneYs = ds_list_create();
ds_list_add(global.LaneYs, firstLaneY, firstLaneY+global.LaneWidth, firstLaneY+global.LaneWidth*2, firstLaneY+global.LaneWidth*3, firstLaneY+global.LaneWidth*4);
global.LaneHalf = global.LaneWidth / 2;

display_set_gui_size(view_wview[0], view_hview[0]);