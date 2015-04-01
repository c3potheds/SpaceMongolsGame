var xcenter = view_xview+view_wview/2;
var ycenter = view_yview+view_hview/2;
var width = 1024;
var height = 768;
view_xview = xcenter - width/2*zoomFactor;
view_yview = ycenter - height/2*zoomFactor;
view_wview = width*zoomFactor;
view_hview = height*zoomFactor;

var scale = 1/(zoomFactor+8);
//var scale = 1/2;

background_xscale[0] = zoomFactor;
background_yscale[0] = zoomFactor;
background_xscale[1] = 8*scale*zoomFactor;
background_yscale[1] = 8*scale*zoomFactor;
//background_x[1] = -xcenter*scale*zoomFactor + view_xview+view_wview/2;
//background_y[1] = -ycenter*scale*zoomFactor + view_yview+view_hview/2;
background_x[1] = -(xcenter - width/2*zoomFactor)*scale*zoomFactor + view_xview;
background_y[1] = -(ycenter - height/2*zoomFactor)*scale*zoomFactor + view_yview;
