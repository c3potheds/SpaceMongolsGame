///script_execute_argv(script, argv)

var script = argument0;
var argv = argument1;

switch (array_length_1d(argv)) {
    case 0:
        return script_execute(script);
    case 1: 
        return script_execute(script, argv[0]);
    case 2:
        return script_execute(script, argv[0], argv[1]);
    case 3:
        return script_execute(script, argv[0], argv[1], argv[2]);
    case 4:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3]);
    case 5:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4]);
    case 6:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5]);
    case 7:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6]);
    case 8:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7]);
    case 9:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8]);
    case 10:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8], argv[9]);
    case 11:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], 
                argv[10]);
    case 12:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], 
                argv[10], argv[11]);
    case 13:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], 
                argv[10], argv[11], argv[12]);
    case 14:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], 
                argv[10], argv[11], argv[12], argv[13]);
    case 15:
        return script_execute(script, argv[0], argv[1], argv[2], argv[3], 
                argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], 
                argv[10], argv[11], argv[12], argv[13], argv[14]);
}
show_error('Too many arguments: ' + string(array_length_1d(argv)), true);