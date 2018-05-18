var exitMenu = false;

if (!layer_exists(_itemWheel))
{
	_changingSelection = false;
	ItemWheel();
}

var selectedItem = noone;

if (_item1._isHighlighted)
	selectedItem = _item1;
else if (_item2._isHighlighted)
	selectedItem = _item2;
else if (_item3._isHighlighted)
	selectedItem = _item3;
else if (_item4._isHighlighted)
	selectedItem = _item4;

if (!_changingSelection)
{
	if (global.isItemSelectionScreen)
	{
		if (keyboard_check_pressed(global.KeyMidLeft) || keyboard_check_pressed(global.KeyLeft))
			selectedItem =  _item1;
		else if (keyboard_check_pressed(global.KeyHigh) || keyboard_check_pressed(global.KeyUp))
			selectedItem = _item2;
		else if (keyboard_check_pressed(global.KeyMidRight) || keyboard_check_pressed(global.KeyRight))
			selectedItem = _item3;
		else if (keyboard_check_pressed(global.KeyLow) || keyboard_check_pressed(global.KeyDown))
			selectedItem = _item4;
	}
	else
	{
		if (keyboard_check_pressed(global.KeyMidLeft))
			selectedItem = _item3._isHighlighted ? noone : _item1;
		else if (keyboard_check_pressed(global.KeyHigh))
			selectedItem = _item4._isHighlighted ? noone : _item2;
		else if (keyboard_check_pressed(global.KeyMidRight))
			selectedItem = _item1._isHighlighted ? noone : _item3;
		else if (keyboard_check_pressed(global.KeyLow))
			selectedItem = _item2._isHighlighted ? noone : _item4;
	}
}

if (_changingSelection)
{
	_itemListObjects[| _itemListIndex]._isHighlighted = false;
	
	if (keyboard_check_pressed(global.KeyLow) || keyboard_check_pressed(global.KeyDown))
		_itemListIndex++;
	else if (keyboard_check_pressed(global.KeyHigh) || keyboard_check_pressed(global.KeyUp))
		_itemListIndex--;
	
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
else if (global.isItemSelectionScreen)
{
	if (!layer_exists(_itemList))
		ItemList();
	
	if (selectedItem != noone && keyboard_check_pressed(global.KeySelect))
	{
		_changingSelection = true;
		_itemListIndex = 0;
	}
}
else
{
	if (keyboard_check_released(global.KeyItemMenu))
	{
		if (selectedItem != noone)
		{
			global.ItemActivated = selectedItem._text;
			selectedItem = noone;
		}
		exitMenu = true;
	}
}

_item1._isHighlighted = false;
_item2._isHighlighted = false;
_item3._isHighlighted = false;
_item4._isHighlighted = false;

if (selectedItem != noone)
	selectedItem._isHighlighted = true;

if (global.isItemSelectionScreen && keyboard_check_pressed(vk_escape))
	exitMenu = true;
	
if (exitMenu)
	ExitItemMenu();