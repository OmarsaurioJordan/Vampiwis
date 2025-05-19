///s_errar_reloj(id);
// requiere id con reloj_errar y moverse
// ret: true si disparo al iniciar movimiento

var ok = false;
with argument0 {
    reloj_errar -= dlt;
    if reloj_errar <= 0 {
        reloj_errar = m_hum_errar_s + random(m_hum_errar_s);
        if moverse {
            moverse = choose(true, true, false);
            direction += random_range(-90, 90);
        }
        else {
            moverse = choose(false, false, true);
            direction = random(360);
            ok = moverse;
        }
        if object_index == o_guerrero {
            dir_esquive = random(360);
            // evento perseguir vampiro todos
            if dia >= 22 and frac((dia - 2) / 10) == 0 {
                if instance_exists(o_player) {
                    moverse = true;
                    direction = point_direction(x, y, o_player.x, o_player.y);
                    ok = false;
                }
            }
        }
    }
}
return ok;

