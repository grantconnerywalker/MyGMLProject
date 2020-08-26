/* Screen Management */

/* TODO 
global.development_mode = true or something
*/

// sets fullscreen
// window_set_fullscreen(true);

// How big is the screen?
// Right now setting to 50% our resolution
global.screen_width = display_get_width() * 0.5;
global.screen_height = display_get_height() * 0.5;

// Set size of window (if not full screen)
window_set_size(global.screen_width, global.screen_height);

// How much of the room do we want on-screen?
// Multiplying essentially zooms out the view
view_wview = global.screen_width * 1.2;
view_hview = global.screen_height * 1.2;

// How much of our screen do we want that to take up?
view_wport = global.screen_width;
view_hport = global.screen_height;

// Some thing you just have to do for Game Maker apparently
surface_resize(application_surface, global.screen_width, global.screen_height);

load_inventory()
save_progress()
