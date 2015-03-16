///distanceInLightYears(object1, object2)
/*
    Returns a number representing the distance between two objects in light
    years. This is a simple conversion factor defined in the constant
    PIXELS_PER_LIGHT_YEAR.
*/

var this = argument0;
var that = argument1;
return point_distance(this.x, this.y, that.x, that.y) / PIXELS_PER_LIGHT_YEAR;
