///s_set_ofihttp(id);
/*
with argument0 {
    ini_open("configuracion.ini");
    http_ofihttp = noone;
    if date_get_week(date_current_datetime()) != ini_read_real("web_oficial", "week", 0) {
        http_ofihttp = http_get_file("https://linktr.ee/omwekiatl", "data_ofihttp.txt");
    }
    globalvar official_web;
    official_web = ini_read_string("web_oficial", "url", "http://omwekiatl.xyz");
    ini_close();
}
*/
