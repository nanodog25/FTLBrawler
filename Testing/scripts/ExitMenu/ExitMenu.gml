layer_destroy(_itemWheel);
layer_destroy(_itemList);
ds_list_clear(_itemListObjects);
surface_free(global.roomSurface);

room_set_persistent(global.roomToMenu, false);
room_goto(global.roomToMenu);