///s_creaman();

var aux = instance_find(o_casa, irandom(instance_number(o_casa) - 1));
var mans = ds_priority_create();
ds_priority_add(mans, m_rol_camp, random(10));
if s_prioridades(m_rol_espada, mans, 8, 3) {
    if s_prioridades(m_rol_rifle, mans, 6, 4) {
        if s_prioridades(m_rol_magia, mans, 8, 5) {
            if s_prioridades(m_rol_cruz, mans, 5, 7) {
                if s_prioridades(m_rol_tambor, mans, 4, 8) {
                    if s_prioridades(m_rol_luz, mans, 4, 9) {
                        s_prioridades(m_rol_divino, mans, 2, 11);
                    }
                }
            }
        }
    }
}
var quien = ds_priority_delete_max(mans);
if quien == m_rol_camp and random(1) < 0.5 {
    if s_prop_camp() {
        quien = ds_priority_delete_max(mans);
    }
}
if quien == m_rol_camp {
    instance_create(aux.x + random_range(-10, 10), aux.y + random_range(-10, 10), o_campesino);
}
else {
    with instance_create(aux.x + random_range(-10, 10), aux.y + random_range(-10, 10), o_semilla) {
        rol = quien;
    }
}
ds_priority_destroy(mans);

