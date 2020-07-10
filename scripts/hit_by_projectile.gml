// Look for a projectile; if there is one, send true, false otherwise
incomingProjectile = instance_place(x, y, oProjectile);

if (instance_exists(incomingProjectile)) {
    
    // Destroys projectile if it was bullet
    // This "with" says to call the contained logic on whatever we are using "with" on, rather than on oFaceEnemy
    // if (incomingProjectile == instance_place(x,y,oBullet)) { // accomplishes the same thing as .object_index but we like that better   
    if (incomingProjectile.object_index == oBullet) {
        with incomingProjectile {
            instance_destroy();
        }    
    }

    return true;
} else {
    return false;
}
