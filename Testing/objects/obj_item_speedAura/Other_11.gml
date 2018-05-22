/// @description setDescription
var count = string(IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default);
global.MenuDescription = "Drops an aura that moves\nyou at " + count + "x regular speed";