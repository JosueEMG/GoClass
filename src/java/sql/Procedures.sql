USE GOCLASS;
DELIMITER @@
DROP PROCEDURE IF EXISTS AdicionCurso @@
CREATE PROCEDURE AdicionCurso(nombrec varchar(45),  precio numeric(10,2), banner varchar(255),idesp int,idusuario int,detalle varchar(255), inscripciones int)
BEGIN
declare idcur int;
set idcur = (select max(id_curso) + 1  from curso);
insert into curso values (idcur,nombrec,precio,banner,idesp,idusuario,detalle,inscripciones);
END@@

DROP PROCEDURE IF EXISTS AdicionContenido @@
CREATE PROCEDURE AdicionContenido(archivo varchar(255), linkpag varchar(255))
BEGIN
declare idcon int;
set idcon = (select max(id_contenido) + 1  from contenido_curso);
insert into contenido_curso values (idcon,idcur,archivo,linkpag);
END@@
DELIMITER ;

USE goclass;
call AdicionCurso('Curso prueba',25, 'prueba.png', 1, 4, "Prueba de detalle", 30);