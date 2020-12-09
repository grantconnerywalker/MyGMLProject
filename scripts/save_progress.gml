// Create save file
save_file = file_text_open_write("Progress.txt")

// Write line of text to it
file_text_write_string(save_file, "Room:")
file_text_writeln(save_file)
file_text_write_string(save_file, string(room))
file_text_writeln(save_file)

file_text_close(save_file)
