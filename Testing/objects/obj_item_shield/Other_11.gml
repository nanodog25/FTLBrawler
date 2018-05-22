/// @description setDescription
var count = string(IsAbilityActive(global.AbilityItemBuff) ? _boosted : _default);
global.MenuDescription = "Automatically block all\ndamage for " + count + " seconds";