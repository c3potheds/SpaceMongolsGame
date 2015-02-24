
var planet = obj_gameManager.playerContext.currentPlanet;

//returns the victor of the battle
var victor = battle(obj_gameManager.playerContext.fleet, 
        obj_gameManager.playerContext.currentPlanet.fleet);
        
planet.fleet = victor;
planet.image_index = victor.faction.skin;

if (victor == obj_gameManager.playerContext.fleet) {
    menuManager_goto(obj_gameManager.menuManager,menu_friendly);
}
else {
    show_message("Your fleet was destroyed. All hope is lost.");
}
