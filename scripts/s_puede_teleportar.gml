///s_puede_teleportar();

if instance_exists(o_espectro) {
    if !collision_circle(o_mouse.x, o_mouse.y, m_hum_vision * 0.2,
            o_humano, true, false) and point_distance(o_espectro.x, o_espectro.y,
            o_mouse.x, o_mouse.y) > m_hum_vision * 0.2 {
        var ggg = m_cost_teleport;
        if luna == 0 and !s_dia() {
            ggg *= m_vampi_bonusluna;
        }
        return sangre - ggg > m_vampi_sangre * 0.1;
    }
}
return false;

