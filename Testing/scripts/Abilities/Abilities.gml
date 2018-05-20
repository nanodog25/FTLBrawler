global.AbilitiesActive = ds_list_create();
global.AbilitiesAvailable = ds_list_create();
global.AbilitiesCost = ds_list_create();
global.AbilityNone = "";
global.AbilityWrapSwitch = "Wrap Switch";
global.AbilityItemBuff = "Item Buff";
global.AbilityShrapnel = "Shrapnel";

AddAbility(global.AbilityWrapSwitch, 2);
AddAbility(global.AbilityItemBuff, 4);
AddAbility(global.AbilityShrapnel, 3);

ds_list_add(global.AbilitiesActive, global.AbilityItemBuff);