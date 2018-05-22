/// @description onActivate
ds_list_add(global.ItemsActive, global.ItemLaunchShot);
_shots = IsAbilityActive(global.AbilityItemBuff) ? 2 : 1;