var selectedItem = noone;

if (_item1._isHighlighted)
	selectedItem = _item1;
else if (_item2._isHighlighted)
	selectedItem = _item2;
else if (_item3._isHighlighted)
	selectedItem = _item3;
else if (_item4._isHighlighted)
	selectedItem = _item4;

if (_editingAbilities)
{
	_abilityListObjects[| _abilityListIndex]._isHighlighted = false;
	if (keyboard_check_pressed(global.KeyMidRight) || keyboard_check_pressed(global.KeyRight))
		_abilityListIndex++;
	else if (keyboard_check_pressed(global.KeyMidLeft) || keyboard_check_pressed(global.KeyLeft))
		_abilityListIndex--;
	
	if (_abilityListIndex == ds_list_size(_abilityListObjects))
		_abilityListIndex = 0;
	else if (_abilityListIndex < 0)
		_abilityListIndex =  ds_list_size(_abilityListObjects) - 1;
	
	var ability = _abilityListObjects[| _abilityListIndex];
	ability._isHighlighted = true;
	
	if (keyboard_check_pressed(global.KeySelect))
	{
		var isActive = !ability._isActive;
		
		if (isActive)
		{
			if (global.playerAbilityPoints >= ability._cost)
			{
				ds_list_add(global.AbilitiesActive, ability._text);
				ability._isActive = isActive;
				global.playerAbilityPoints -= ability._cost;
			}
		}
		else
		{
			ds_list_delete(global.AbilitiesActive, ds_list_find_index(global.AbilitiesActive, ability._text));
			ability._isActive = isActive;
			global.playerAbilityPoints += ability._cost;
		}
	}
	
	if (keyboard_check_pressed(global.KeyHigh) || keyboard_check_pressed(global.KeyUp))
	{
		ability._isHighlighted = false;
		_editingAbilities = false;
		selectedItem = _item4;
	}
}
else if (_changingSelection)
{
	_itemListObjects[| _itemListIndex]._isHighlighted = false;
	
	if (keyboard_check_pressed(global.KeyLow) || keyboard_check_pressed(global.KeyDown))
		_itemListIndex++;
	else if (keyboard_check_pressed(global.KeyHigh) || keyboard_check_pressed(global.KeyUp))
		_itemListIndex--;
	
	if (_itemListIndex == ds_list_size(_itemListObjects))
		_itemListIndex = 0;
	else if (_itemListIndex < 0)
		_itemListIndex =  ds_list_size(_itemListObjects) - 1;
	
	_itemListObjects[| _itemListIndex]._isHighlighted = true;
	
	
	if (keyboard_check_pressed(global.KeySelect))
	{
		_itemListObjects[| _itemListIndex]._isHighlighted = false;
		var newReserve = selectedItem._text;
		var newAvailable = _itemListObjects[| _itemListIndex]._text;
		
		selectedItem._text = newAvailable;
		_itemListObjects[| _itemListIndex]._text = newReserve;
		
		global.ItemsAvailable[| ds_list_find_index(global.ItemsAvailable, newReserve)] = newAvailable;
		global.ItemsReserved[| ds_list_find_index(global.ItemsReserved, newAvailable)] = newReserve;

		_changingSelection = false;
	}
}
else
{
	if (keyboard_check_pressed(global.KeyMidLeft) || keyboard_check_pressed(global.KeyLeft))
		selectedItem = _item1;
	else if (keyboard_check_pressed(global.KeyHigh) || keyboard_check_pressed(global.KeyUp))
		selectedItem = _item2;
	else if (keyboard_check_pressed(global.KeyMidRight) || keyboard_check_pressed(global.KeyRight))
		selectedItem = _item3;
	else if (keyboard_check_pressed(global.KeyLow) || keyboard_check_pressed(global.KeyDown))
	{
		if (_item4._isHighlighted)
		{
			_editingAbilities = true;
			_abilityListIndex = 0;
			_abilityListObjects[| _abilityListIndex]._isHighlighted = true;
			selectedItem = noone;
		}
		else
			selectedItem = _item4;
	}
	
	if (selectedItem != noone && keyboard_check_pressed(global.KeySelect))
	{
		_changingSelection = true;
		_itemListIndex = 0;
	}
}

_item1._isHighlighted = false;
_item2._isHighlighted = false;
_item3._isHighlighted = false;
_item4._isHighlighted = false;

if (selectedItem != noone)
	selectedItem._isHighlighted = true;

if (keyboard_check_pressed(global.KeyItemMenu))
{
	if (_changingSelection)
	{
		_itemListObjects[| _itemListIndex]._isHighlighted = false;
		_changingSelection = false;
	}
	_onPage2 = true;
	layer_set_visible(_page1, false);
	layer_set_visible(_page2, true);
}

if (keyboard_check_pressed(vk_escape))
{
	if (_changingSelection)
	{
		_itemListObjects[| _itemListIndex]._isHighlighted = false;
		_changingSelection = false;
	}
	else
		exitMenu = true;
}