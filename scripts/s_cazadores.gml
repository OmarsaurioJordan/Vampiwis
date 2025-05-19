///s_cazadores();

var num = clamp(poblacion + m_hum_cuadrilla - instance_number(o_humano),
    0, m_hum_cuadrilla);
var ppp = ds_priority_create();
ds_priority_add(ppp, m_rol_espada, random(10));
ds_priority_add(ppp, m_rol_rifle, random(13));
ds_priority_add(ppp, m_rol_magia, random(10));
ds_priority_add(ppp, m_rol_cruz, random(4));
ds_priority_add(ppp, m_rol_luz, random(7));
ds_priority_add(ppp, m_rol_tambor, random(7));
if dia >= 47 {
    ds_priority_add(ppp, m_rol_divino, random(5));
}
var tipo = ds_priority_find_max(ppp);
ds_priority_destroy(ppp);
var aux = instance_nearest(0, 0, o_casa);
repeat num {
    with instance_create(aux.x + random(20),
            aux.y + random_range(-10, 10), o_semilla) {
        rol = tipo;
    }
}

