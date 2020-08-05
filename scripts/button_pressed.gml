button_text = argument0
result = false

// Find corners of our box
box_top = current_y
text_top = box_top + margin
box_bottom = box_top + margin + string_height(button_text) + margin
half_width = string_width(button_text)/2
box_left = x - half_width - margin*2
box_right = x + half_width + margin*2

draw_set_colour(make_colour_hsv(0, 200, 128))

// See if mouse is hovering over it
if device_mouse_x_to_gui(0) > box_left && device_mouse_x_to_gui(0) < box_right && device_mouse_y_to_gui(0) > box_top && device_mouse_y_to_gui(0) < box_bottom {
    draw_set_alpha(1)
    if mouse_check_button_pressed(mb_left) {
        result = true
    }
} else {
    draw_set_alpha(0.5)
}

draw_rectangle(box_left, box_top, box_right, box_bottom,false)
draw_set_alpha(1)

draw_set_colour(c_white)

current_y = text_top
draw_text_and_update_current_y(button_text)

current_y += margin*2

return result
