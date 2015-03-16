///playerContext_create(controller, perceivedGalaxy, fleet)
/*
    An object that controls what is perceived by a specific player, be it a 
    human, AI, or network player.
*/

var controller = argument0;
var perceivedGalaxy = argument1;
var fleet = argument2;
var player = instance_create(fleet.x, fleet.y, obj_playerContext);
player.fleet = fleet;
player.perceivedGalaxy = perceivedGalaxy;
player.localTime = 0;
player.realTime = false;
player.locked = false;
player.controller = controller;
return player;
