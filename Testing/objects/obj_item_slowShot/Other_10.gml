/// @description onActivate
ds_list_add(global.ItemsActive, global.ItemSlowShot);
_shots = IsAbilityActive(global.AbilityItemBuff) ? 5 : 3;