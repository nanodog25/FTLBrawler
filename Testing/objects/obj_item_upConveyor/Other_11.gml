/// @description setDescription
global.MenuDescription = IsAbilityActive(global.AbilityItemBuff)
	? "Pushes anything that enters\nthis spot upwards"
	: "Pushes the first " + string(_default) + " that\nenter this spot upwards";