#define screen_coords_x
///screen_coords_x(x)

var xx = argument0;
return (xx-view_xview[0])/view_wview[0]*view_wport[0];

#define screen_coords_y
///screen_coords_y(y)

var yy = argument0;
return (yy-view_yview[0])/view_hview[0]*view_hport[0];
