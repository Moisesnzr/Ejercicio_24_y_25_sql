
drop table visitas;

create table visitas(
    nombre varchar2(30) default 'Anonimo',
    mail varchar2(50),
    pais varchar2(20),
    fecha date
);

insert into visitas values ('Ana Maria Lopez', 'AnaMaria@hotmail.com', 'Argentina', to_date('10/10/2020 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));
insert into visitas values ('Gustavo Gonzalez', 'GustavoGGonzalez@hotmail.com', 'Chile', to_date('15/08/2019 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));
insert into visitas values ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', to_date('07/02/2021 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));
insert into visitas values ('Fabiola Martinez', 'MartinezFabiola@hotmail.com', 'Mexico', to_date('18/05/2020 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));
insert into visitas values ('Fabiola Martinez', 'MartinezFabiola@hotmail.com', 'Mexico', to_date('21/10/2020 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));
insert into visitas values ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', to_date('10/10/2019 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));
insert into visitas values ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', to_date('30/03/2021 21:02:44', 'dd/mm/yyyy hh24:mi:ss'));

select *from visitas order by fecha desc;

select nombre,pais,extract(month from fecha)from visitas order by 2,3 desc;

select mail, pais from visitas where extract(month from fecha) = 10 order by 2;