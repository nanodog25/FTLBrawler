/// @description onActivate
ds_list_add(global.ItemsActive, global.ItemShield);
alarm_set(0, InSeconds(IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default));