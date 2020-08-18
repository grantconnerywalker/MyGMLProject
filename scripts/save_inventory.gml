if instance_exists(oPlayer) {

    with oPlayer {
    
        // Create save file
        save_file = file_text_open_write("Inventory.txt")
        
        // Write line of text to it
        file_text_write_string(save_file, "Inventory:")
        file_text_writeln(save_file)
        
        // Write a list of our weapons
        i = 0
        while i < weapon_count {
        
            // record that we have this weapon
            file_text_write_real(save_file, weapons_array[i].object_index)
            file_text_writeln(save_file)
            i += 1
            
        }
        
        file_text_close(save_file)
    
    }
}
