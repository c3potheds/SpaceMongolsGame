///builder_defaultDataHandler(object, key, value)

var object = argument0;
var key = argument1;
var value = argument2;

with (object) {
    switch (key) {
        case 'type':
            type = value;
            break;
        case 'data':
            data = value;
            break;
    }
}
