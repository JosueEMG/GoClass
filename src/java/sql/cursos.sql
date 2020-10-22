/*listado de los cursos para la vista usuario*/
use goclass;
select id_curso, nombre, precio, banner, prod_present, detalle_curso from curso where id_especialidad=1;

/* listado de los cursos por id_usuario*/
use goclass;
select id_curso, nombre, banner, e.nombre_especialidad, prod_present, detalle_curso from curso c inner join especialidad e on c.id_especialidad=e.id_especialidad where id_usuario=5;

/*actualizar banner del curso */
use goclass;
update curso set banner="ffffff" where id_curso=4;

/*Para agregar cursos*/
use goclass;
insert into curso (nombre, precio, banner, id_especialidad, id_usuario, prod_present, detalle_curso) values ("PHP", 100.50, "ggggg", 1, 2, 2,"wfwfef" );

/*Para eliminar cursos*/
use goclass;
delete from curso where id_curso=8;

/*Listar Especialidades*/
use goclass;
select id_especialidad, nombre_especialidad from especialidad; where id_especialidad=5;

/*Agregar Especialidades*/
use goclass;
insert into especialidad (nombre_especialidad) values ("Literatura");

/*Para eliminar especialidad*/
use goclass;
delete from especialidad where id_especialidad=7;

/*Listar Tipo*/
use goclass;
select id_tipo_us, nombre_tipo from tipo_us;

/*Listar Videos segun Curso*/
use goclass;
select link from video where id_curso=4;

/*Adicionar video*/
use goclass;
insert into video (id_curso, link) values (4, "ghghhghg");

/*Eliminar un video segun id_video*/
use goclass;
delete from video where id_video=2;

/*Eliminar video segun id_curso*/
use goclass;
delete from video where id_curso=4;
