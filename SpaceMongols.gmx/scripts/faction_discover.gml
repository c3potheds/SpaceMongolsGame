///faction_discover(faction, planet)

with (argument0) {
    ds_map_add(discoveredPlanets,argument1,1);
    //Push notification
    notification_create(argument1,"New planet discovered!");
}