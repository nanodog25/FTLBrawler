layer_create(0, _itemWheel);
_item1 = instance_create_layer(view_wview[0]*0.25, view_hview[0]*0.5, _itemWheel, obj_button_item);
_item2 = instance_create_layer(view_wview[0]*0.5, view_hview[0]*0.25, _itemWheel, obj_button_item);
_item3 = instance_create_layer(view_wview[0]*0.75, view_hview[0]*0.5, _itemWheel, obj_button_item);
_item4 = instance_create_layer(view_wview[0]*0.5, view_hview[0]*0.75, _itemWheel, obj_button_item);

_item1._obj = GetItem(global.ItemsAvailable[| 0]);
_item1._text = global.ItemsAvailable[| 0];

_item2._obj = GetItem(global.ItemsAvailable[| 1]);
_item2._text = global.ItemsAvailable[| 1];

_item3._obj = GetItem(global.ItemsAvailable[| 2]);
_item3._text = global.ItemsAvailable[| 2];

_item4._obj = GetItem(global.ItemsAvailable[| 3]);
_item4._text = global.ItemsAvailable[| 3];