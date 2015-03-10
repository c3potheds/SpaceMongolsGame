///console_println(string)

var line = argument0;
with (obj_console) {
    lines[lastLine] = line;
    textColor[lastLine] = currentColor;
    lastLine++;
    if (lastLine - firstLine + 2 > height/string_height('hi')) {
        firstLine = lastLine - height/string_height('hi') + 2;
    }
}