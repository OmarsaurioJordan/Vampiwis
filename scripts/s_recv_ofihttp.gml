///s_recv_ofihttp(id, map_http);
// poner esto en event HTTP recepcion
// debe llamarse primero a s_set_ofihttp();
/*
with argument0 {
    if ds_map_find_value(argument1, "id") == http_ofihttp {
        if ds_map_find_value(argument1, "status") == 0 {
            var fff = ds_map_find_value(argument1, "result");
            var ttt = file_text_open_read(fff);
            var sss;
            while !file_text_eof(ttt) {
                sss = file_text_read_string(ttt);
                if string_count("</style></head><body><div", sss) == 1 {
                    var ppp;
                    while true {
                        ppp = string_pos('<a href="', sss);
                        if ppp == 0 {
                            var uuu = "";
                            while true {
                                ppp++;
                                if string_char_at(sss, ppp) == '"' {
                                    ini_open("configuracion.ini");
                                    ini_write_string("web_oficial", "url", uuu);
                                    ini_write_real("web_oficial", "week", date_get_week(date_current_datetime()));
                                    ini_close();
                                    official_web = uuu;
                                    break;
                                }
                                else {
                                    uuu += string_char_at(sss, ppp);
                                }
                            }
                            break;
                        }
                        else {
                            sss = string_delete(sss, 1, ppp + 8);
                        }
                    }
                    break;
                }
                file_text_readln(ttt);
            }
            file_text_close(ttt);
        }
        file_delete(fff);
    }
}
*/
