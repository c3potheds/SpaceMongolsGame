///unitTest_end()

var passed = ds_list_size(ds_list_filter(global.unitTest_tests, isTrue));
var total = ds_list_size(global.unitTest_tests);
if (passed == total) {
    console_setColor(c_lime);
    console_println('All passed!');
}
else {
    console_setColor(c_red);
    console_println(str_format('@/@ passed.', passed, total));
}
file_text_close(global.unitTest_file);
console_setColor(c_white);
