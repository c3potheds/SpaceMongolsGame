///array_equals(array1, array2, type)

var array1 = argument0;
var array2 = argument1;
var type = argument2;

if (array_length_1d(array1) != array_length_1d(array2)) {
    return false;
}
for (var i = 0; i < array_length_1d(array1); i++) {
    if (!equals(array1[i], array2[i], type)) {
        return false;
    }
}
return true;