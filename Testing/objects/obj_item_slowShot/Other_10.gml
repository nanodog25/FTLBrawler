/// @description onActivate
ds_list_add(global.ItemsActive, global.ItemSlowShot);
_count = IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default;