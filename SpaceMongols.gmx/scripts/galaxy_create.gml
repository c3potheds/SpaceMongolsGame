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
    galaxy_placePlanet(new, planetName, planetDescription);
}
return new;
