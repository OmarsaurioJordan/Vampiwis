///s_sangre(cant_cambio, evita_morir);
// ret: true si pudo hacer la transaccion y sigue vivo

var ok = false;
if argument0 >= 0 {
    ok = true;
    sangre = min(m_vampi_sangre, sangre + argument0);
}
else if sangre + argument0 > m_vampi_sangre * 0.1 or !argument1 {
    ok = true;
    sangre = max(0, sangre + argument0);
    if sangre == 0 {
        // fin del juego
        ok = false;
        o_control.finalizado = true;
        if esman {
            audio_play_sound(vz_vampi_die, 21, false);
        }
        else {
            audio_play_sound(vz_vampa_die, 21, false);
        }
        
        // records
        s_record();
        
        // eliminar al jugador
        if instance_exists(o_player) {
            with o_player {
                var aux = instance_create(x, y, o_muerto);
                aux.genero = -1;
                switch object_index {
                    case o_vampiro:
                        aux.pies = 2;
                        aux.cabeza = 0;
                        break;
                    case o_espectro:
                        aux.pies = -1;
                        aux.cabeza = 31;
                        break;
                    case o_bestia:
                        aux.pies = 35;
                        aux.cabeza = 33;
                        break;
                }
                instance_destroy();
            }
        }
        else {
            o_cripta.dormido = false;
        }
    }
}
return ok;

