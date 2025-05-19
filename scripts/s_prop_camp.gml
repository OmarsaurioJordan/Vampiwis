///s_prop_camp();
// ret: true si hay mas campesinos de los que deberia

var prop = instance_number(o_campesino) / max(1, instance_number(o_humano));
return (dia >= 14 and prop > 0.25) or
        (dia >= 10 and prop > 0.5) or
        (dia >= 6 and prop > 0.75);

