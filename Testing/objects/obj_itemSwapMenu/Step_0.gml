exitMenu = false;

if (!layer_exists(_page1))
{
	layer_create(0, _page1);
	_changingSelection = false;
	_editingAbilities = false;
	ItemSwapWheel();
	ItemList();
	AbilityList();
}

if (!layer_exists(_page2))
{
	layer_create(0, _page2);
	layer_set_visible(_page2, false);
	LobList();
	LinearList();
	FistList();
	_page2Index = 0;
	_page2Section = 0;
}

if (!_onPage2)
	Page1();
else
	Page2();
	
if (exitMenu)
	ExitItemSwapMenu();