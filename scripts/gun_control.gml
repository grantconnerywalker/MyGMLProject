shot_type = argument0
bullet_speed = argument1
bullet_direction = argument2
kick_back = argument3
sound_type = argument4
seconds_between = argument5;

// Gun should destroy itself if player ever dies

seconds_since_last = 0

if instance_exists(owner) {
    
    // Hide gun sprite once it's picked up
    visible = false;
    
    x = owner.x
    y = owner.y
    image_angle = owner.facing
    
    if owner.weapons_array[owner.selected_weapon_index] == self.id {
    
        /* Shooting */
        var fireButton = mb_left;
        
        //Increment timer
        seconds_since_last += 1/room_speed
        
        //If we're clicking AND we're ready to fire
        if mouse_check_button(fireButton) and (seconds_since_last >= seconds_between) {
            seconds_since_last = 0
        
            myBullet = instance_create(x, y, shot_type);
            
            myBullet.speed = bullet_speed;
            myBullet.direction = bullet_direction;
            myBullet.image_angle = image_angle;
        
            // Kickback code
            kick_direction = image_angle + 180
            
            owner.kick_x += lengthdir_x(kick_back, kick_direction);
            owner.kick_y += lengthdir_y(kick_back, kick_direction);
            
            audio_play_sound(sound_type, 1, false);
        
        }
    }
    
} else {
    
    visible = true;
    
}

