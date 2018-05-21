var selectedItem = noone;

if (_item1._isHighlighted)
	selectedItem = _item1;
else if (_item2._isHighlighted)
	selectedItem = _item2;
else if (_item3._isHighlighted)
	selectedItem = _item3;
else if (_item4._isHighlighted)
	selectedItem = _item4;

if (keyboard_check_pressed(global.KeyLeft))
	selectedItem = _item3._isHighlighted ? noone : _item1;
else if (keyboard_check_pressed(global.KeyUp))
	selectedItem = _item4._isHighlighted ? noone : _item2;
else if (keyboard_check_pressed(global.KeyRight))
	selectedItem = _item1._isHighlighted ? noone : _item3;
else if (keyboard_check_pressed(global.KeyDown))
	selectedItem = _item2._isHighlighted ? noone : _item4;

if (keyboard_check_released(global.KeyItemMenu))
{
	//apply selectedItem
	ExitMenu();
}

_item1._isHighlighted = false;
_item2._isHighlighted = false;
_item3._isHighlighted = false;
_item4._isHighlighted = false;

if (selectedItem != noone)
	selectedItem._isHighlighted = true;