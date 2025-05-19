///s_invasion();

// invasion nocturna segun hora
if current_hour <= 6 {
    with o_control {
        repeat mas_zombi {
            if instance_number(o_zombi) < instance_number(o_humano) {
                var f = 5;
                var aux;
                do {
                    f--;
                    aux = instance_find(o_lapida, irandom(instance_number(o_lapida) - 1));
                }
                until f > 0 and !aux.visible;
                if !aux.visible {
                    instance_create(aux.x + random_range(-10, 10), aux.y + random_range(-10, 10), o_zombi);
                }
            }
        }
        mas_zombi++;
    }
}

