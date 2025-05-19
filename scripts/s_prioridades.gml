///s_prioridades(rol, list_prior, prior, dia_ini);
// ret: false si hay una unidad con alta prioridad

var ok = true;
if dia >= argument3 {
    if ds_list_find_index(o_control.history, argument0) == -1 {
        ds_list_add(o_control.history, argument0);
        ds_priority_add(argument1, argument0, 100);
        ok = false;
    }
    else if dia >= 15 {
        ds_priority_add(argument1, argument0, random(6));
    }
    else {
        ds_priority_add(argument1, argument0, random(argument2));
    }
}
return ok;

