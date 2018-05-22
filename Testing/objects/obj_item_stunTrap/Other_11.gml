/// @description setDescription
global.MenuDescription = IsAbilityActive(global.AbilityItemBuff)
	? "Places a trap that stuns an\nenemy until next hit"
	: "Places a trap that stuns an\nenemy for " + string(_default) + " seconds";