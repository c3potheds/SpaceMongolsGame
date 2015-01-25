#define screen_coords_x
///screen_coords_x(x)

return (x-view_xview)/view_wview*view_wport;

#define screen_coords_y
///screen_coords_y(y)

return y-view_yview*view_hview/view_hport;
