/* Solids Bouncing */

speed = normal_speed

// If we're about to walk into a wall, change direction until not
collision_checks = 0;
while place_meeting(x + hspeed, y + vspeed, oSolid) && collision_checks <= 4 {
    direction += 45
    collision_checks += 1
}

// If we're about to be shunted into a wall, don't get shunted.
if place_meeting(x + hspeed + kick_x, y + vspeed + kick_y, oSolid) {
    reset_shunts()
}
// Otherwise shunt
hspeed += kick_x
vspeed += kick_y
reset_shunts()
