use goclass1;
insert into usuario (nombre_us, apellidos_us, fecha_nacimiento, dni_us, contrasena_us, correo_us, sexo_us, tipo_us, avatar) values ("josue", "medina", "2001-03-04", "76546352", "12345", "josue@gmail.com", "Masculino", 3, "");
select * from usuario;

-- subir de alumno a docente
update usuario set tipo_us = 2 where id_usuario = 10;

-- bajar de docete a alumno
update usuario set tipo_us = 3 where id_usuario = 10;

-- cambiar datos de usuario
update usuario set nombre_us = "josue1", apellidos_us = "medina1", fecha_nacimiento = "2000-06-04", correo_us = "josue1@gmail.com", sexo_us = "Femenino" where id_usuario = 10;

--cambiar avatar
update usuario set avatar = "ola.png" where id_usuario = 10;
--cambiar contraseña
update usuario set contrasena_us = "123456" where id_usuario = 10;

-- listar usuarios
select id_usuario ,nombre_us, apellidos_us, fecha_nacimiento, dni_us, contrasena_us, correo_us, sexo_us, t.nombre_tipo, avatar
from usuario u inner join tipo_us t
on u.tipo_us = t.id_tipo_us;


