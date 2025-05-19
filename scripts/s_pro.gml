///s_pro(rol);

var res = false;
switch argument0 {
    case m_rol_espada: res = dia >= 34; break;
    case m_rol_rifle: res = dia >= 35; break;
    case m_rol_magia: res = dia >= 36; break;
    case m_rol_cruz: res = dia >= 37; break;
    case m_rol_tambor: res = dia >= 38; break;
    case m_rol_luz: res = dia >= 39; break;
    case m_rol_divino: res = dia >= 40; break;
}
if res {
    return m_hum_pro;
}
else {
    return 1;
}

