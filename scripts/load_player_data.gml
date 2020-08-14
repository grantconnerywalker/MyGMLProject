// TODO Empty player's current inventory (if any) [not sure how to empty array in gml]
//i = array_length_1d(weapons_array)-1
//while i > -1 {   
//}

// Read save file
save_file = file_text_open_read("Player Data.txt")

// Skip first line of text (the one that says "Inventory"
file_text_readln(save_file)

// Write a list of our weapons

// While we haven't reached the end of the file
while file_text_eof(save_file) == false {

    // Read each weapon from file
    weapon_type = file_text_read_real(save_file)
    instance_create(x, y, weapon_type)
    file_text_readln(save_file)
    
}

file_text_close(save_file)
