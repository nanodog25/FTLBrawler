var xOffset = -200;
var yOffset = -200;

_item1 = instance_create_layer(view_wview[0]*0.5 - 150 + xOffset, view_hview[0]*0.5 + yOffset, _page1, obj_button_item);
_item2 = instance_create_layer(view_wview[0]*0.5 + xOffset, view_hview[0]*0.5 - 100 + yOffset, _page1, obj_button_item);
_item3 = instance_create_layer(view_wview[0]*0.5 + 150 + xOffset, view_hview[0]*0.5 + yOffset, _page1, obj_button_item);
_item4 = instance_create_layer(view_wview[0]*0.5 + xOffset, view_hview[0]*0.5 + 100 + yOffset, _page1, obj_button_item);

_item1._item = global.ItemsAvailable[| 0];
_item1._isHighlighted = true;

_item2._item = global.ItemsAvailable[| 1];
	
_item3._item = global.ItemsAvailable[| 2];
	
_item4._item = global.ItemsAvailable[| 3];