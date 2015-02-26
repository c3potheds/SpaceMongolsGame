///faction_create(name,image_index)

var new = instance_create(0,0,obj_faction);
new.discoveredPlanets = ds_map_create();
new.name = argument0;
new.skin = argument1;
return new;
