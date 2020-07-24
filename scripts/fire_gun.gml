// Script for performing the actual firing and kickback

//args
shot_type = argument0
bullet_speed = argument1
bullet_direction = argument2
kick_back = argument3
sound_type = argument4


// Create bullet
myBullet = instance_create(x, y, shot_type);

myBullet.speed = bullet_speed;
myBullet.direction = bullet_direction;
myBullet.image_angle = image_angle;

// Kickback code
kick_direction = image_angle + 180

owner.kick_x += lengthdir_x(kick_back, kick_direction);
owner.kick_y += lengthdir_y(kick_back, kick_direction);

audio_play_sound(sound_type, 1, false);

