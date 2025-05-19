///s_ani_ini(id, num_osci, num_psao);
//arg0: id instancia que llama
//arg1: numero de animaciones osci
//arg2: numero de animaciones paso

with argument0 {
    for (var i = 0; i < argument1; i++) {
        reloj_anima[i] = random(3);
        anima[i] = 0;
    }
    for (var i = 0; i < argument2; i++) {
        reloj_paso[i] = random(1);
        paso[i] = 0;
    }
}

