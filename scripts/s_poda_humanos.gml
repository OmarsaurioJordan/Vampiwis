///s_poda_humanos();

with o_control {
    // freno final
    if dia >= 60 {
        exit;
    }
    // eliminar esceso campesinos, lucira como si se armaran
    var freno = min(ceil(dia * 0.5), 6);
    var f = freno;
    var ok = true;
    while ok and f > 0 {
        ok = false;
        f--;
        if s_prop_camp() {
            with o_campesino {
                if !visible {
                    ok = true;
                    instance_destroy();
                    break;
                }
            }
        }
    }
    // crear humanos
    var tot = instance_number(o_humano);
    repeat clamp(floor(poblacion) - tot, 0, freno) {
        s_creaman();
    }
}

