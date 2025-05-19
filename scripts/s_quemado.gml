///s_quemado(id, es_player);

if argument1 {
    if o_control.reloj_fuego == 0 {
        o_control.reloj_fuego = m_fuego_caden_s + random(m_fuego_caden_s);
        with argument0 {
            s_fuego(m_fuego_parti, x, y, m_fuego_radio);
        }
    }
}
else {
    with argument0 {
        if reloj_fuego == 0 {
            reloj_fuego = m_fuego_caden_s + random(m_fuego_caden_s);
            s_fuego(m_fuego_parti, x, y, m_fuego_radio);
        }
    }
}

