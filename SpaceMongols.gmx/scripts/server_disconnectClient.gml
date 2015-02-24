///server_disconnectClient(server, socket)

var socket = argument1;
with (argument0) {
    ds_map_delete(clients, socket);
    //TODO: notify other clients that a player has disconnected and replace the 
    //player context's controller with an AI controller
}
