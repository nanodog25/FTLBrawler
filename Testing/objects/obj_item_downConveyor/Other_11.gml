/// @description setDescription
global.MenuDescription = IsAbilityActive(global.AbilityItemBuff)
	? "Pushes anything that enters\nthis spot downwards"
	: "Pushes the first " + string(_default) + " that\nenter this spot downwards";