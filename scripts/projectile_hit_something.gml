incomingProjectile = argument0

if (incomingProjectile.object_index == oBullet || incomingProjectile.object_index == oCat) {
    with incomingProjectile {
        instance_destroy();
    }    
}
