draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_rectangle(bbox_left,global.LaneYs[| _lane] -8,bbox_right,global.LaneYs[| _lane] +8,false);
draw_set_alpha(1);

event_inherited();