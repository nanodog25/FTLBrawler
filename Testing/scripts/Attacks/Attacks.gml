global.AttacksAll = ds_list_create();
global.AttacksAvailable = ds_list_create();
global.AttacksActive = ds_list_create();
global.AttackThrow = "Throw";
global.AttackNervePinch = "Nerve Pinch";
global.AttackParallelPull = "Parallel Pull";

ds_list_add(global.AttacksAll, global.AttackThrow);
ds_list_add(global.AttacksAll, global.AttackNervePinch);
ds_list_add(global.AttacksAll, global.AttackParallelPull);


ds_list_add(global.AttacksAvailable, global.AttackThrow);
ds_list_add(global.AttacksAvailable, global.AttackNervePinch);
ds_list_add(global.AttacksAvailable, global.AttackParallelPull);