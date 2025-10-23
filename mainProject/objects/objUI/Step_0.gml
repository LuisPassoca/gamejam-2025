oldCamX = camera_get_view_x(view_camera[0])

if oldCamX != newCamX {
 x += oldCamX - newCamX
}

newCamX = camera_get_view_x(view_camera[0])

