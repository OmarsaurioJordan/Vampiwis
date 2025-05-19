//s_ventana();
//acomoda ventana al tamanno del monitor

var eh, er, w, h, mr;

if room == w_pc {
    eh = 0.85;//porcentaje de altura pantalla
    er = view_hview[0] / view_wview[0];//relaccion h / w ventana
    mr = 0.05 //distancia respecto borde superior
}
else {
    eh = 1;
    er = 1024 / 1536;
    mr = 0;
}

h = display_get_height() * eh;
w = h / er;

if window_get_height() != h {
    window_set_size(w, h);
    window_set_position(
        (display_get_width() - w) * 0.5,
        display_get_height() * mr);
}

