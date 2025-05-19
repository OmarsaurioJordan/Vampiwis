///s_niebla(particulas, x, y, radio);

var xx, yy;
repeat argument0 {
    do {
        xx = argument1 + random_range(-argument3, argument3);
        yy = argument2 + random_range(-argument3, argument3);
    }
    until point_distance(xx, yy, argument1, argument2) <= argument3;
    with instance_create(xx, yy, o_vapor) {
        tipo = 10;
    }
}

