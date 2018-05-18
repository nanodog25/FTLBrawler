layer_create(0, _itemWheel);
var xOffset = global.isItemSelectionScreen ? -300 : 0;

_item1 = instance_create_layer(view_wview[0]*0.25 + xOffset, view_hview[0]*0.5, _itemWheel, obj_button_item);
_item2 = instance_create_layer(view_wview[0]*0.5 + xOffset, view_hview[0]*0.25, _itemWheel, obj_button_item);
_item3 = instance_create_layer(view_wview[0]*0.75 + xOffset, view_hview[0]*0.5, _itemWheel, obj_button_item);
_item4 = instance_create_layer(view_wview[0]*0.5 + xOffset, view_hview[0]*0.75, _itemWheel, obj_button_item);

with(_item1)
	_text = global.ItemsAvailable[| 0];
	
with(_item2)
	_text = global.ItemsAvailable[| 1];
	
with(_item3)
	_text = global.ItemsAvailable[| 2];
	
with(_item4)
	_text = global.ItemsAvailable[| 3];