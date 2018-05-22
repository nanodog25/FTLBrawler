/// @description onActivate
ds_list_add(global.ItemsActive, _item);
_shots = IsAbilityActive(global.AbilityItemBuff) ? 5 : 3;