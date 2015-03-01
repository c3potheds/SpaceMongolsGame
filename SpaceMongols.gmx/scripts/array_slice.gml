///array_slice(array, beginIndex, endIndex)
/*
    Returns a copy of the array beginning at beginIndex and ending at endIndex.
*/

var array = argument0;
var beginIndex = argument1;
var endIndex = argument2;
var newArray;
for (var i = 0; i < endIndex - beginIndex; i++) {
    newArray[i] = array[i + beginIndex];
}
return newArray;
