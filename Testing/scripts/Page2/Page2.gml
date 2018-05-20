var selectedItem;;
var selectedSection;

switch(_page2Section)
{
	case 0:
		selectedSection = _lobListObjects;
		break;
	case 1:
		selectedSection = _linearListObjects;
		break;
	case 2:
		selectedSection = _fistListObjects;
		break;
}

selectedSection[| _page2Index]._isHighlighted = false;

if (keyboard_check_pressed(global.KeyMidRight) || keyboard_check_pressed(global.KeyRight))
	_page2Index++;
else if (keyboard_check_pressed(global.KeyMidLeft) || keyboard_check_pressed(global.KeyLeft))
	_page2Index--;
else if (_page2Section != 0 && keyboard_check_pressed(global.KeyHigh) || keyboard_check_pressed(global.KeyUp))
	_page2Section--;
else if (_page2Section != 2 && keyboard_check_pressed(global.KeyLow) || keyboard_check_pressed(global.KeyDown))
	_page2Section++;

switch(_page2Section)
{
	case 0:
		selectedSection = _lobListObjects;
		break;
	case 1:
		selectedSection = _linearListObjects;
		break;
	case 2:
		selectedSection = _fistListObjects;
		break;
}

if (_page2Index == ds_list_size(selectedSection))
	_page2Index = 0;
else if (_page2Index < 0)
	_page2Index =  ds_list_size(selectedSection) - 1;
	
selectedItem = selectedSection[| _page2Index];
selectedItem._isHighlighted = true;

//if (keyboard_check_pressed(global.KeySelect))
//{
//	var isActive = !selectedItem._isActive;
		
//	if (isActive)
//	{
//		if (global.playerAbilityPoints >= ability._cost)
//		{
//			ds_list_add(global.AbilitiesActive, ability._text);
//			ability._isActive = isActive;
//			global.playerAbilityPoints -= ability._cost;
//		}
//	}
//	else
//	{
//		ds_list_delete(global.AbilitiesActive, ds_list_find_index(global.AbilitiesActive, ability._text));
//		ability._isActive = isActive;
//		global.playerAbilityPoints += ability._cost;
//	}
//}
	


if (keyboard_check_pressed(global.KeyItemMenu))
{
	_onPage2 = false;
	layer_set_visible(_page1, true);
	layer_set_visible(_page2, false);
}

if (keyboard_check_pressed(vk_escape))
{
	exitMenu = true;
}