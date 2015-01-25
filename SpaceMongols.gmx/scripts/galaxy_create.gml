#define galaxy_create
///galaxy_create(filename)

var new = instance_create(0,0,obj_galaxy);
var file = file_text_open_read(argument0);
var planetStruct = json_decode(file_text_read_string(file));
var planetList = planetStruct[?'planets'];
for (var i=0;i<ds_list_size(planetList);i++) {
    var planet = planetList[|i];
    planetName = planet[?'name'];
    planetDescription = planet[?'flavor'];
    galaxy_place_planet(new, planetName, planetDescription);
}

#define galaxy_place_planet
///galaxy_place_planet(galaxy, name, description)

var xx, yy;
var done = false;
var border = sprite_get_width(spr_planet_blue);
while (!done) {
    xx = random(room_width-border)+border/2;
    yy = random(room_height-border)+border/2;
    if (instance_nearest(xx,yy,obj_planet)) {
    
    }
}
