/// @description onUse
if (!IsAbilityActive(global.AbilityItemBuff))
{
	_default--;

	if (_default <= 0)
		DeactivateItem(global.ItemDownConveyor);
}