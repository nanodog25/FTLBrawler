global.isFightInitiated = true;
ds_list_clear(global.ItemsUsed);
ds_list_clear(global.ItemsActive);

global.isItemSelectionScreen = true;
SaveRoom();
room_goto(ItemSelect);