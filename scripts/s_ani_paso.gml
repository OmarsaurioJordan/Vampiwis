///s_ani_paso(id, ind_ani, delay_paso, num_subimg);
//arg0: id instancia que llama
//arg1: id de la animacion
//arg2: tiempo entre pasos
//arg3: cuantas sub-imagenes son

with argument0 {
    // dar el paso
    reloj_paso[argument1] += dlt;
    while reloj_paso[argument1] >= argument2 {
        reloj_paso[argument1] -= argument2;
        paso[argument1]++;
        if paso[argument1] >= argument3 {
            paso[argument1] = 0;
        }
    }
}

