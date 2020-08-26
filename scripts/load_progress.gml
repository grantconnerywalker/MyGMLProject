if file_exists("Progress.txt") {

        // Read save file
        save_file = file_text_open_read("Progress.txt")
        
        // Skip first line of text (the one that says "Inventory"
        file_text_readln(save_file) // "Room:"
        room_to_go_to = file_text_read_real(save_file)
        
        if room_exists(room_to_go_to) {
            room_goto(room_to_go_to)
        }
        
        file_text_close(save_file)
        
        oMenu.mode = "Game"

}
