///s_tambor(x, y);

var a = choose(a_agudo, a_grave);
if instance_exists(o_espectro) {
    a = a_agudo;
}
else if instance_exists(o_bestia) {
    a = a_grave;
}
audio_play_sound_at(a, argument0, argument1, -m_proy_altura,
    32, m_audio_distance, 1, false, 20);

