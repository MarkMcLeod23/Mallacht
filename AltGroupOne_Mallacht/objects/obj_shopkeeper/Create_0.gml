// Inherit the parent event
event_inherited();
creature_name = getState("Shopkeeper")

if(global.act == 2){
	instance_create_layer(x,y, "Instances", obj_false_shopkeep)
	instance_destroy()
	
}