///unitTest_assert(testName, actual, expected, type)

var testName = argument0;
var actual = argument1;
var expected = argument2;
var type = argument3;
var result = equals(actual, expected, type);
if (result) {
    console_setColor(c_lime);
    console_println(testName + ': PASSED');
    file_text_write_string(global.unitTest_file, testName + ': PASSED');
    file_text_writeln(global.unitTest_file);
}
else {
    console_setColor(c_red);
    console_println(testName + ': FAILED');
    console_println('    Expected: ' + toString(expected, type));
    console_println('    Actual:   ' + toString(actual, type));  
    file_text_write_string(global.unitTest_file, testName + ': FAILED');
    file_text_writeln(global.unitTest_file);
    file_text_write_string(global.unitTest_file, 
            '    Expected: ' + toString(expected, type));
    file_text_writeln(global.unitTest_file);
    file_text_write_string(global.unitTest_file,
            '    Actual:   ' + toString(actual, type));
    file_text_writeln(global.unitTest_file);
}
ds_list_add(global.unitTest_tests, result);
console_setColor(c_white);