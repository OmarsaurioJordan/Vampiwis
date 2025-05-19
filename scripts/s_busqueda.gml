///s_busqueda(id, iteraciones, dist_vision);

var blanco = noone;
if instance_exists(o_monster) {
    var f = argument1;
    var dd, ll, aux;
    var xx = argument0.x;
    var yy = argument0.y;
    while blanco == noone and f > 0 {
        f--;
        // buscar blanco
        ll = random_range(argument2 * 0.25, argument2 * 0.75);
        dd = random(360);
        aux = instance_nearest(xx + lengthdir_x(ll, dd),
            yy + lengthdir_y(ll, dd), o_monster);
        if point_distance(xx, yy, aux.x, aux.y) <= argument2 and
                !collision_line(xx, yy, aux.x, aux.y, o_bloque, true, false) {
            blanco = aux;
        }
    }
}
return blanco;

