/// @description setDescription
var count = string(IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default);
global.MenuDescription = "Next " + count + " shots will\nlaunch enemies";