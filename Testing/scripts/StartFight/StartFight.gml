global.isFightInitiated = true;
ds_list_clear(global.ItemsUsed);
ds_list_clear(global.ItemsActive);

SaveRoom();
room_goto(ItemSwap);