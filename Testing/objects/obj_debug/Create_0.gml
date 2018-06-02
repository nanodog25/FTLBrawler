_displayGrid = false;
depth = DepthModifier(0, "Overlay");
_roomsOutOfBounds = ds_list_create();

ds_list_add(_roomsOutOfBounds, BaseRoom);
ds_list_add(_roomsOutOfBounds, rm_street);
ds_list_add(_roomsOutOfBounds, Menu);
ds_list_add(_roomsOutOfBounds, ItemSelect);
ds_list_add(_roomsOutOfBounds, ItemSwap);

_loadedObjects = false;
_shouldLoadObjects = instance_find(obj_trigger_fight, 0) == noone;