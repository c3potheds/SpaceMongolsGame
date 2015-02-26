///galaxy_getPlanetNear(galaxy, x, y)

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
