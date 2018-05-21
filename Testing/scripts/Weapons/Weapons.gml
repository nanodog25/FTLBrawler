global.LobActive = ds_list_create();
global.LobAvailable = ds_list_create();
global.LobCost = ds_list_create();

global.LinearActive = ds_list_create();
global.LinearAvailable = ds_list_create();
global.LinearCost = ds_list_create();

global.LinearShrapnel = "Shrapnel";

global.LobSplit = "Split";

AddLinear(global.LinearShrapnel, 2);
AddLob(global.LobSplit, 1);
