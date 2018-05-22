global.ItemActivated = "";
global.ItemsUsedThisStep = ds_list_create();
global.ItemsActive = ds_list_create();
global.ItemsUsed = ds_list_create();
global.ItemsAvailable = ds_list_create();
global.ItemsReserved = ds_list_create();

global.ItemNone = "";
global.ItemShield = "Shield";
global.ItemSlowShot = "Slow Shot";
global.ItemSpeedAura = "Speed Aura";
global.ItemLaneBarrier = "Lane Barrier";
global.ItemLaunchShot = "Launch Shot";
global.ItemStunTrap = "Stun Trap";
global.ItemDownConveyor = "Down Conveyor";
global.ItemUpConveyor = "Up Conveyor";


ds_list_add(global.ItemsAvailable, global.ItemShield);
ds_list_add(global.ItemsAvailable, global.ItemSlowShot);
ds_list_add(global.ItemsAvailable, global.ItemSpeedAura);
ds_list_add(global.ItemsAvailable, global.ItemLaneBarrier);

ds_list_add(global.ItemsReserved, global.ItemLaunchShot);
ds_list_add(global.ItemsReserved, global.ItemStunTrap);
ds_list_add(global.ItemsReserved, global.ItemDownConveyor);
ds_list_add(global.ItemsReserved, global.ItemUpConveyor);
