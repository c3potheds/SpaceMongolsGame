#define faction_create
///faction_create()

var new = instance_create(0,0,obj_faction);
new.discoveredPlanets = ds_map_create();

#define faction_discover
///faction_discover(faction, planet)

with (argument0) {
    ds_map_add(discoveredPlanets,argument1,1);
    //Push notification
    notification_create(argument1,"New planet discovered!");
}
