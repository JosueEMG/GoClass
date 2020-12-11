use goclass;
insert into usuario (nombre_us, apellidos_us, fecha_nacimiento, dni_us, contrasena_us, correo_us, sexo_us, tipo_us, avatar) values ("josue", "medina", "2001-03-04", "76546352", "12345", "josue@gmail.com", "Masculino", 3, "");


-- subir de alumno a docente
update usuario set tipo_us = 2 where id_usuario = 10;

-- bajar de docete a alumno
update usuario set tipo_us = 3 where id_usuario = 10;

-- cambiar datos de usuario
update usuario set nombre_us = "josue1", apellidos_us = "medina1", fecha_nacimiento = "2000-06-04", correo_us = "josue1@gmail.com", sexo_us = "Femenino" where id_usuario = 10;

select contrasena_us from usuario where dni_us = "123456789";

select * from usuario;

--cambiar avatar
update usuario set avatar = "ola.png" where id_usuario = 10;
--cambiar contraseña
update usuario set contrasena_us = "123456" where id_usuario = 10;

-- listar usuarios
select id_usuario ,nombre_us, apellidos_us, fecha_nacimiento, dni_us, contrasena_us, correo_us, sexo_us, t.nombre_tipo, avatar
from usuario u inner join tipo_us t
on u.tipo_us = t.id_tipo_us;


--listar inscripciones por idUsuario
use goclass;
select i.id_curso, c.nombre, c.banner, c.detalle_curso
from inscripcion i inner join curso c
on i.id_curso = c.id_curso where i.id_usuario = 1;


use goclass;
select nombre, nro_inscripciones, banner, e.nombre_especialidad
from curso c inner join especialidad e
on c.id_especialidad = e.id_especialidad
order by nro_inscripciones desc limit 8





