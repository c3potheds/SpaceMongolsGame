///ship_orbit(ship,x,y)
var xx = argument1;
var yy = argument2;
with (argument0) {
    var p = path_add();
    var axis1 = random_range(50,200);
    var axis2 = choose(-1,1)*random_range(50,200);
    path_add_point(p,xx+axis1,yy+axis2,10);
    path_add_point(p,xx+axis1,yy-axis2,10);
    path_add_point(p,xx-axis1,yy-axis2,10);
    path_add_point(p,xx-axis1,yy+axis2,10);
    path_rotate(p,random(360));
    path_set_precision(p,8);
    path_set_kind(p,1);
    path_set_closed(p,true);
    path_start(p,10,1,true);
}}
