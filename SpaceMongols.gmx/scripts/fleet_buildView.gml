#define fleet_create
///fleet_create(faction, numberOfShips, fuel, hasMothership, x, y)

var new = instance_create(argument4,argument5,obj_fleet);
new.faction = argument0;
new.numberOfShips = argument1;
new.fuel = argument2;
new.hasMothership = argument3;
new.ships = ds_stack_create();
return new;

#define fleet_buildView
///fleet_buildView(fleet, numberOfShips)

with (argument0) {
    for (var i=0;i<argument1;i++) {
        var newShip = instance_create(x,y,obj_ship);
        newShip.image_index = faction.skin;
        newShip.fleet = id;
        var p = path_add();
        var axis1 = random_range(50,200);
        var axis2 = choose(-1,1)*random_range(50,200);
        path_add_point(p,x+axis1,y+axis2,10);
        path_add_point(p,x+axis1,y-axis2,10);
        path_add_point(p,x-axis1,y-axis2,10);
        path_add_point(p,x-axis1,y+axis2,10);
        path_rotate(p,random(360));
        path_set_precision(p,8);
        path_set_kind(p,1);
        path_set_closed(p,true);
        with (newShip) {
            path_start(p,10,1,true);
        }
        ds_stack_push(ships, newShip);
    }
}
