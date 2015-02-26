///galaxy_placePlanet(galaxy, name, description)

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
