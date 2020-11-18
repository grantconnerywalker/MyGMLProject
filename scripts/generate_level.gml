instance_create(room_width / 2, room_height / 2, oPlayer)

if !instance_exists(oGame) {
    instance_create(room_width / 2, room_height / 2, oGame)
}

// spawn obstacles
number_of_blocks = irandom_range(5,20)
number_of_attempts = number_of_blocks * 100
attempt = 0
block_size = 64 // measure block at some point
safety_margin = block_size

while instance_number(oSolid) < number_of_blocks && attempt < number_of_attempts {
    new_block = instance_create(random_range(safety_margin, room_width-safety_margin), random(room_height), oSolid)
    new_block.x = (new_block.x div block_size) * block_size
    new_block.y = (new_block.y div block_size) * block_size
    with new_block {
        // if we're on top of the player, remove us
        if place_meeting(x,y,oPlayer) { instance_destroy() }
    }
    attempt += 1
}

// spawn enemies
number_of_boomers = irandom_range(3,7)
number_of_attempts = number_of_boomers * 100
attempt = 0
while instance_number(oBoomer) < number_of_boomers && attempt < number_of_attempts {
    new_boom = instance_create(random_range(safety_margin, room_width-safety_margin), random(room_height),oBoomer)
    with new_boom {
        // if we're on top of the player or a wall, kill us
        if place_meeting(x,y,oPlayer) { instance_destroy() }
        if place_meeting(x,y,oSolid) { instance_destroy() }
    }
    attempt += 1
}

// spawn enemies
number_of_tints = 40
color_1 = make_color_rgb(random(255),random(255),random(255));
color_2 = make_color_rgb(random(255),random(255),random(255));
while instance_number(oTint) < number_of_tints {
    new_tint = instance_create(random(room_width), random(room_height),oTint)
    new_tint.image_blend = choose(color_1, color_2)
}
