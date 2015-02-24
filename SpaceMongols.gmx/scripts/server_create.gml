///server_create()

var new = instance_create(0, 0, obj_server);
new.clients = ds_map_create();
return new;