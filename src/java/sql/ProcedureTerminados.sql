use goclass;
delimiter@@
create procedure anadirCurso (nombre varchar(25), precio decimal(8,1), banner varchar(25), idesp int, idusu int, detalle varchar(255), link1 varchar(255), link2 varchar(255), link3 varchar(255), link4 varchar(255), link5 varchar(255))
begin
declare nro int;
select max(id_curso)+1 from curso into nro;
insert into curso values(nro, nombre, precio, banner, idesp, idusu, detalle, 0);
insert into contenido_curso (id_curso, enlace) values (nro,link1);
insert into contenido_curso (id_curso, enlace) values (nro,link2);
insert into contenido_curso (id_curso, enlace) values (nro,link3);
insert into contenido_curso (id_curso, enlace) values (nro,link4);
insert into contenido_curso (id_curso, enlace) values (nro,link5);
end@@
delimiter;

use goclass;
call anadirCurso("gg", 100.0, "ttt", 2, 3, "hhhh", "yyyy", "uuu", "aaaaa", "gaaaaa", "chupetin");


use goclass;
delimiter@@
create procedure modificarCurso (idcur int, nom varchar(25), pre decimal(8,1), idesp int, 
idusu int, detalle varchar(255), link1 varchar(255), link2 varchar(255), link3 varchar(255), link4 varchar(255), 
link5 varchar(255), id_contenido1 int, id_contenido2 int, id_contenido3 int, id_contenido4 int, id_contenido5 int)
begin
Update curso set nombre=nom, precio=pre, id_especialidad=idesp, id_usuario=idusu, detalle_curso=detalle where id_curso=idcur;
Update contenido_curso set enlace = link1 where id_contenido=id_contenido1;
Update contenido_curso set enlace = link2 where id_contenido=id_contenido2;
Update contenido_curso set enlace = link3 where id_contenido=id_contenido3;
Update contenido_curso set enlace = link4 where id_contenido=id_contenido4;
Update contenido_curso set enlace = link5 where id_contenido=id_contenido5;
end@@
delimiter;

use goclass;
call modificarCurso(1, "aea", 50.0, 3, 3, "fuck me", "the same shit", "la sen chip", "sale su gta", "gaaaaa", "chupetin", 1,2,3,4,5);


use goclass;
delimiter@@
create procedure comprarCurso (idusu int, idcur int, metodo varchar(25))
begin
declare nro int;
declare nrocur int;
select max(id_factura)+1 from factura into nro;
insert into factura values(nro, now(), idusu, idcur, metodo);
select (nro_inscripciones)+1 from curso where id_curso=idcur into nrocur;
Update curso set nro_inscripciones=nrocur where id_curso=idcur;
insert into inscripcion (id_curso, id_usuario, id_factura) values (idcur, idusu, nro);
end@@
delimiter;

use goclass;
call comprarCurso(1, 5, "paypal");

DELIMITER @@
CREATE PROCEDURE goclass.eliminarCurso
(idcur int)
begin
delete from curso where id_curso = idcur;
delete from contenido_curso where id_curso = idcur;
end @@ 
DELIMITER ; 

