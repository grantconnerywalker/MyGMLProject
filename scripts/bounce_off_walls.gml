/* Edge Bouncing */

if (y < 0 || y > room_height) {
    vspeed *= -1;
}
if (x < 0 || x > room_width) {
    hspeed *= -1;
}

/* Wall Bouncing */
collision_checks = 0;
while place_meeting(x + hspeed, y + vspeed, oSolid) && collision_checks <= 4 {
    direction += 45
    collision_checks += 1
}
