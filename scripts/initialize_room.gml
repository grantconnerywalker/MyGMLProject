/* Screen Management */

// sets fullscreen
// window_set_fullscreen(true);

// How big is the screen?
// Right now setting to 50% our resolution
screen_width = display_get_width() * 0.5;
screen_height = display_get_height() * 0.5;

// Set size of window (if not full screen)
window_set_size(screen_width, screen_height);

// How much of the room do we want on-screen?
// Multiplying essentially zooms out the view
view_wview = screen_width * 1.2;
view_hview = screen_height * 1.2;

// How much of our screen do we want that to take up?
view_wport = screen_width;
view_hport = screen_height;

// Some thing you just have to do for Game Maker apparently
surface_resize(application_surface, screen_width, screen_height);
