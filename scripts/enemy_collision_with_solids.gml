/* Solids Bouncing */

speed = normal_speed

// If we're about to walk into a wall, change direction until not
collision_checks = 0;
direction_to_check = choose(-1,1)
while place_meeting(x + hspeed, y + vspeed, oSolid) && collision_checks <= 4 {
    direction += random_range(30, 60) * direction_to_check
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
