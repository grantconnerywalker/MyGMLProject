/* Edge Bouncing */

if (y < 0 || y > room_height) {
    vspeed *= -1;
}
if (x < 0 || x > room_width) {
    hspeed *= -1;
}
