///array_add(array1, array2)

var array1 = argument0;
var array2 = argument1;
var result;
for (var i = array_length_1d(array1) + array_length_1d(array2) - 1; i >= 0; 
        i--) {
    if (i >= array_length_1d(array1)) {
        result[i] = array2[i-array_length_1d(array1)];
    }
    else {
        result[i] = array1[i];
    }
}
return result;
