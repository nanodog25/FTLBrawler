_displayGrid = false;
depth = DepthModifier(0, "");
_roomsOutOfBounds = ds_list_create();

ds_list_add(_roomsOutOfBounds, BaseRoom);
ds_list_add(_roomsOutOfBounds, rm_street);
ds_list_add(_roomsOutOfBounds, Menu);
ds_list_add(_roomsOutOfBounds, ItemSelect);
ds_list_add(_roomsOutOfBounds, ItemSwap);
