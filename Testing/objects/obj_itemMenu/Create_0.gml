_item1 = instance_create_layer(view_wview[0]*0.25, view_hview[0]*0.5, "Instances", obj_button_item);
_item2 = instance_create_layer(view_wview[0]*0.5, view_hview[0]*0.25, "Instances", obj_button_item);
_item3 = instance_create_layer(view_wview[0]*0.75, view_hview[0]*0.5, "Instances", obj_button_item);
_item4 = instance_create_layer(view_wview[0]*0.5, view_hview[0]*0.75, "Instances", obj_button_item);

with(_item1)
	_text = global.ItemsAvailable[| 0];
	
with(_item2)
	_text = global.ItemsAvailable[| 1];
	
with(_item3)
	_text = global.ItemsAvailable[| 2];
	
with(_item4)
	_text = global.ItemsAvailable[| 3];