///fleet_destroyShip(fleet)

with (argument0) {
    if (ds_list_size(ships) > 0) {
        i = ds_list_size(ships)-1;
        with (ships[|i]) {
            effect_create_above(ef_firework,x,y,0,choose(c_yellow,c_orange));
            instance_destroy();
        }
        ds_list_delete(ships,i);
        numberOfShips--;
    }
}