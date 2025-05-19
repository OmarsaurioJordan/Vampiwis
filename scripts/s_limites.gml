///s_limites(id);
// objeto id debe tener xi, yi

with argument0 {
    var ll = point_distance(x, y, 2048, 2048 + 254);
    if ll > 2000 {
        direction = point_direction(x, y, 2048, 2048 + 254);
        ll -= 2000;
        x += lengthdir_x(ll, direction);
        y += lengthdir_y(ll, direction);
    }
    // filtro movimiento
    var vv = point_distance(xi, yi, x, y);
    vv *= dlt * 10;
    var dd = point_direction(xi, yi, x, y);
    xi += lengthdir_x(vv, dd);
    yi += lengthdir_y(vv, dd);
    depth = -yi;
}

