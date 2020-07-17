/* Pick Up Weapons */
if (!instance_exists(owner)) {
    if instance_exists(instance_place(x,y,oPlayer)) {
        // Remember who owns us (Player)
        owner = oPlayer.id
        // Add to owner's weapon array
        owner.weapons_array[owner.weapon_count] = self.id
        // Tell owner that they have one more weapon
        owner.weapon_count += 1
    }
}
