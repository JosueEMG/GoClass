USE GOCLASS;
DELIMITER @@
DROP PROCEDURE IF EXISTS AdicionCurso @@
CREATE PROCEDURE AdicionCurso(nombrec varchar(45),  precio numeric(10,2), banner varchar(255),idesp int,idusuario int,detalle varchar(255), inscripciones int)
BEGIN
declare nro int;
select ifnull(max(idcurso),0) + 1  from curso into nro;
set idcur = lpad(nro,11,'0');
insert into facdet values (idcur,nombrec,precio,banner,idesp,idusuario,detalle,inscripciones);
select idcur;
END@@

DROP PROCEDURE IF EXISTS AdicionContenido @@
CREATE PROCEDURE AdicionContenido(archivo varchar(255), linkpag varchar(255))
BEGIN
declare nros int;
declare fac char(8);
select ifnull(max(id_contenido),0) + 1  from contenido_curso into nros;
set idcon = nros;
insert into contenido_curso values (idcon,idcur,archivo,linkpag);
END@@
DELIMITER ;
