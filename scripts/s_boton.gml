///s_boton(ind_boton);
// 0: left clic
// 1: right clic
// ret: true si pulso

if mygp != -1 {
    switch argument0 {
        case 0:
            return gamepad_button_check_pressed(mygp, gp_face1) or
                gamepad_button_check_pressed(mygp, gp_face3) or
                gamepad_button_check_pressed(mygp, gp_shoulderl);
        case 1:
            return gamepad_button_check_pressed(mygp, gp_face2) or
                gamepad_button_check_pressed(mygp, gp_face4) or
                gamepad_button_check_pressed(mygp, gp_shoulderr);
    }
}
else if room == w_pc {
    switch argument0 {
        case 0:
            return mouse_check_button_pressed(mb_left) or
                keyboard_check_pressed(ord('Z'));
        case 1:
            return mouse_check_button_pressed(mb_right) or
                keyboard_check_pressed(ord('X'));
    }
}
else {
    switch argument0 {
        case 0:
            if device_mouse_check_button_pressed(1, mb_left) {
                return point_distance(
                    device_mouse_x_to_gui(1), device_mouse_y_to_gui(1),
                    1408, view_hview[0] / 2 - 150) < 128 * 0.8;
            }
            else if device_mouse_check_button_pressed(0, mb_left) {
                return point_distance(
                    device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
                    1408, view_hview[0] / 2 - 150) < 128 * 0.8;
            }
        case 1:
            if device_mouse_check_button_pressed(1, mb_left) {
                return point_distance(
                    device_mouse_x_to_gui(1), device_mouse_y_to_gui(1),
                    1408, view_hview[0] / 2 + 150) < 128 * 0.8;
            }
            else if device_mouse_check_button_pressed(0, mb_left) {
                return point_distance(
                    device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
                    1408, view_hview[0] / 2 + 150) < 128 * 0.8;
            }
    }
}
return false;

