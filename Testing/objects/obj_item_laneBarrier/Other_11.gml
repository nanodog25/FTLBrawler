/// @description setDescription
global.MenuDescription = IsAbilityActive(global.AbilityItemBuff)
	? "Lane switching for everyone\nbut you is cancelled\nfor " + string(_default) + " seconds"
	: "Lane switching is cancelled\nfor " + string(_default) + " seconds";