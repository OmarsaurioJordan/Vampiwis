///s_gamepads();

mygp = -1;
if gamepad_is_supported() {
    var gp_num = gamepad_get_device_count();
    for (var i = 0; i < gp_num; i++;) {
        if gamepad_is_connected(i) {
            mygp = i;
            if random(1) < 0.5 {
                break;
            }
        }
    }
}
if mygp != -1 {
    gamepad_set_axis_deadzone(mygp, 0.25);
}

