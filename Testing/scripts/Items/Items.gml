global.ItemActivated = "";
global.ItemsActive = ds_list_create();
global.ItemsUsed = ds_list_create();
global.ItemsAvailable = ds_list_create();
global.ItemNone = "";
global.ItemShield = "Shield";
global.ItemSlowShot = "Slow Shot";
global.ItemSpeedAura = "Speed Aura";
global.ItemLaneBarrier= "Lane Barrier";

ds_list_add(global.ItemsAvailable, global.ItemShield);
ds_list_add(global.ItemsAvailable, global.ItemSlowShot);
ds_list_add(global.ItemsAvailable, global.ItemSpeedAura);
ds_list_add(global.ItemsAvailable, global.ItemLaneBarrier);
