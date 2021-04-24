
-- Primer Ejercicio

drop table medicamentos;

create table medicamentos(
    codigo number(5),
    nombre varchar2(20),
    laboratorio varchar2(20),
    precio number(5,2),
    cantidad number(3),
    primary key(codigo)
);

insert into medicamentos values(100,'Sertal','Roche',5.2,100);
insert into medicamentos values(102,'Buscapina','Roche',4.10,200);
insert into medicamentos values(205,'Amoxidal 500','Bayer',15.60,100);
insert into medicamentos values(230,'Paracetamol 500','Bago',1.90,200);
insert into medicamentos values(345,'Bayaspirina','Bayer',2.10,150); 
insert into medicamentos values(347,'Amoxidal jarabe','Bayer',5.10,250); 

select codigo,nombre from medicamentos where laboratorio = 'Roche' and precio < 5;

select * from medicamentos where laboratorio = 'Roche' or precio < 5;

select * from medicamentos where laboratorio = 'Bayer' and not cantidad = 100;

select * from medicamentos where not laboratorio = 'Bayer' and cantidad = 100;

select nombre from medicamentos where precio >= 2 and precio <= 5;

delete from medicamentos where laboratorio = 'Bayer' and precio > 10;

update medicamentos set cantidad = 200 where laboratorio = 'Roche' and precio > 5;

select *from medicamentos;

delete from medicamentos where laboratorio = 'Bayer' or precio < 3;


-- Segundo Ejercicio

drop table peliculas;

create table peliculas(
    codigo number(4),
    titulo varchar2(40) not null,
    actor varchar2(20),
    duracion number(3),
    primary key (codigo)
);

insert into peliculas values(1020,'Mision imposible','Tom Cruise',120);
insert into peliculas values(1021,'Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas values(1022,'Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas values(1200,'Mision imposible 2','Tom Cruise',120);
insert into peliculas values(1234,'Mujer bonita','Richard Gere',120);
insert into peliculas values(900,'Tootsie','D. Hoffman',90);
insert into peliculas values(1300,'Un oso rojo','Julio Chavez',100);
insert into peliculas values(1301,'Elsa y Fred','China Zorrilla',110);

select *from peliculas where actor = 'Tom Cruise' or actor = 'Richard Gere';

select *from peliculas where actor = 'Tom Cruise' and duracion < 100;

select titulo from peliculas where duracion >= 100 and duracion <= 120;

update peliculas set duracion = 200 where actor = 'Daniel R.' and duracion = 180;

select *from peliculas;

delete from peliculas where not actor = 'Tom Cruise' and duracion <= 100;
