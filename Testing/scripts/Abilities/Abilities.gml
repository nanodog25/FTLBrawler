global.AbilitiesActive = ds_list_create();
global.AbilitiesAvailable = ds_list_create();
global.AbilitiesCost = ds_list_create();
global.AbilityWrapSwitch = "Wrap Switch";
global.AbilityItemBuff = "Item Buff";

AddAbility(global.AbilityWrapSwitch, 2);
AddAbility(global.AbilityItemBuff, 4);

ds_list_add(global.AbilitiesActive, global.AbilityWrapSwitch);