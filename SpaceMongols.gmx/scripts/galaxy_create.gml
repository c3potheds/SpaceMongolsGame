#define galaxy_create
///galaxy_create(filename)

randomize();
var new = instance_create(0,0,obj_galaxy);
new.players = noone;
new.numberOfPlayers = 0;
new.planets = ds_list_create();
new.transits = ds_list_create();
new.potentialFortifications = ds_list_create();
new.potentialBattles = ds_list_create();
var file = file_text_open_read(argument0);
var planetStruct = json_decode(file_text_read_string(file));
var planetList = planetStruct[?'planets'];
for (var i=0;i<ds_list_size(planetList);i++) {
    var planet = planetList[|i];
    planetName = planet[?'name'];
    planetDescription = planet[?'flavor'];
    galaxy_place_planet(new, planetName, planetDescription);
}
return new;

#define galaxy_place_planet
///galaxy_place_planet(galaxy, name, description)

var xx, yy, nearestPlanet;
var done = false;
var border = sprite_get_width(spr_planet)*2;
while (!done) {
    xx = random(room_width-border*2)+border;
    yy = random(room_height-border*4)+border*2;
    nearestPlanet = instance_nearest(xx,yy,obj_planet);
    if (nearestPlanet == noone || 
            point_distance(xx,yy,nearestPlanet.x,nearestPlanet.y) > border) {
        var planet = planet_create(xx,yy,argument1,argument2);
        ds_list_add(argument0.planets,planet);
        done = true;
    }
}

#define galaxy_addPlayer
///galaxy_addPlayer(galaxy, player)

with (argument0) {
    players[numberOfPlayers] = argument1;
    numberOfPlayers++;
}

#define galaxy_getPlanetNear
///galaxy_get_planetNear(galaxy, x, y)

var xx, yy, pq;
xx = argument1;
yy = argument2;
pq = ds_priority_create();
for (var i=0;i<instance_number(obj_planet);i++) {
    var planet = instance_find(obj_planet, i);
    var dist = point_distance(xx,yy,planet.x,planet.y);
    ds_priority_add(pq, planet, random(dist*dist));
}
var choice = ds_priority_find_min(pq);
ds_priority_destroy(pq);
return choice;

#define galaxy_addTransit
///galaxy_addTransit(galaxy, transit)

with (argument0) {
    ds_list_add(transits,argument1);
}}
