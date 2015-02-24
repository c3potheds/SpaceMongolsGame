///server_addClient(server, socket)

var socket = argument1;
with (argument0) {
    clients[? socket] = instance_create(0, 0, obj_client);
    with (clients[? socket]) {
        buffer = ""
    }
}
