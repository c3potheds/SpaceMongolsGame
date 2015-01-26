///battle(attackingFleet, defendingFleet)
//Returns the victor of a battle

while (true) {
    if (argument0.numberOfShips == 0) {
        return argument1;
    }
    else if (argument1.numberOfShips == 0) {
        return argument0;
    }
    for (var i=0;i<argument0.numberOfShips;i++) {
        attackerRoll = irandom(6);
        defenderRoll = irandom(6);
        if (attackerRoll > defenderRoll) {
            fleet_destroyShip(argument1);
        }
        else {
            fleet_destroyShip(argument0);
        }
    }
}
