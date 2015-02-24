///server_handleBuffer(server, socket, buffer, size)

var socket = argument1;
var buffer = argument2;
var size = argument3;
with (argument0) {
    var client = clients[? socket];
    clients.buffer += buffer_read(buffer, buffer_string);
    var eventdata = json_decode(clients.buffer);
    if (eventdata != -1) {
        switch(eventdata[? 'type']) {
            case 'Player Registration':
                break;
            case 'Planet Event':
                break;
        }
        clients.buffer = "";
    }
}