var exitMenu = false;

if (!layer_exists(_itemWheel))
{
	ItemSelectWheel();
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

if (keyboard_check_pressed(global.KeyMidLeft))
	selectedItem = _item3._isHighlighted ? noone : _item1;
else if (keyboard_check_pressed(global.KeyHigh))
	selectedItem = _item4._isHighlighted ? noone : _item2;
else if (keyboard_check_pressed(global.KeyMidRight))
	selectedItem = _item1._isHighlighted ? noone : _item3;
else if (keyboard_check_pressed(global.KeyLow))
	selectedItem = _item2._isHighlighted ? noone : _item4;

if (keyboard_check_released(global.KeyItemMenu))
{
	if (selectedItem != noone)
	{
		global.ItemActivated = selectedItem._text;
		selectedItem = noone;
	}
	exitMenu = true;
}

_item1._isHighlighted = false;
_item2._isHighlighted = false;
_item3._isHighlighted = false;
_item4._isHighlighted = false;

if (selectedItem != noone)
	selectedItem._isHighlighted = true;
	
if (exitMenu)
	ExitItemSelectMenu();