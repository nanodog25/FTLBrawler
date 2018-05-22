/// @description setDescription
global.MenuDescription = IsAbilityActive(global.AbilityItemBuff)
	? "Pushes anything that touches the\nfloor on this spot upwards"
	: "Pushes the first " + string(_default) + " things that touch the\nfloor on this spot upwards";