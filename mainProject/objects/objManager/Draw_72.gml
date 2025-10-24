draw_self()

// get camera horizontal position
var cam_x = camera_get_view_x(view_camera[0]);

// get layer id


// move layer with the camera x position
layer_x("Montanha", cam_x);
layer_x("Sky", cam_x);
layer_x("Sea", cam_x);
layer_x("Clouds", cam_x);

layer_y("Montanha", camera_get_view_y(view_camera[0]));
layer_y("Sky", camera_get_view_y(view_camera[0]));
layer_y("Sea", camera_get_view_y(view_camera[0]));
layer_y("Clouds", camera_get_view_y(view_camera[0]));