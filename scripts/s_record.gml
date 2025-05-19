///s_record();

if o_control.trampa {
    o_control.trampa = false;
}
else {
    var vstats = stats[4];
    stats[4] = max(stats[4], dia);
    if stats[4] != vstats {
        stats[5] = stats[0];
        stats[6] = stats[2];
    }
    stats[1] = max(stats[1], stats[0]);
    stats[3] = max(stats[3], stats[2]);
    ini_open("configuracion.ini");
    ini_write_real("stats", "sangre", stats[1]);
    ini_write_real("stats", "muertes", stats[3]);
    ini_write_real("stats", "dias", stats[4]);
    ini_write_real("stats", "dia_sangre", stats[5]);
    ini_write_real("stats", "dia_muertes", stats[6]);
    ini_close();
}

