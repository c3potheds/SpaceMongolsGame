#define player_create
///player_create(faction, implementation)

var new = instance_create(0,0,argument1);
new.faction = argument0;
new.playerContexts = ds_list_create();
return new;

#define player_addFlagshipFleet
///player_addFlagshipFleet(player, planet, numberOfShips)

with (argument0) {
    var new = instance_create(0,0,obj_playerContext);
    new.fleet = fleet_create(faction, argument2, 100, true);
    new.currentPlanet = argument1;
    new.x = new.currentPlanet.x;
    new.y = new.currentPlanet.y;
    ds_list_add(playerContexts,new);
    return new;
}
