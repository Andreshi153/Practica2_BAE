Create database if not exists personas;
use personas;
create table personas(
  cod_hospital	integer,
  dni 		integer primary key,
  apellidos	varchar(50),
  funcion	varchar(30),
  salario	integer,
  localidad	varchar(20));

insert into personas values(1,12345678,'García Hernández, Eladio','CONSERJE',1200,'LORCA');
insert into personas values(1,87654321,'Fuentes Bermejo, Carlos','DIRECTOR',2000,'MURCIA');
insert into personas values(2,55544433,'González Marín, Alicia','CONSERJE',1200,'MURCIA');
insert into personas values(1,66655544,'Castillo Montes, Pedro','MEDICO',1700,'MURCIA');
insert into personas values(2,22233322,'Tristán García, Ana','MEDICO',1900,'MURCIA');
insert into personas values(3,55544411,'Ruiz Hernández, Caridad','MEDICO',1900,'LORCA');
insert into personas values(3,99988333,'Serrano Díaz, Alejandro','DIRECTOR',2400,'CARTAGENA');
insert into personas values(4,33222111,'Mesa del Castillo, Juan','MEDICO',2200,'LORCA');
insert into personas values(2,22233333,'Martínez Molina, Andrés','MEDICO',1600,'CARTAGENA');
insert into personas values(4,55544412,'Jiménez Jiménez, Dolores','CONSERJE',1200,'MURCIA');
insert into personas values(4,22233311,'Martínez Molina, Gloria','MEDICO',1600,'MURCIA');

/* Ejercicio 1
use personas_BAE;
Select * from personas;
*/

/* Ejercicio 2
use personas_BAE
Select dni, apellido, funcion from personas
*/

/* Ejercicio 3
use personas_BAE
Select apellidos, Localidad from personas where localidad = 'Lorca';
*/

/* Ejercicio 4
use personas_BAE
Select apellidos, localidad from personas where localidad = 'Lorca' or localidad = 'Murcia'
*/

/* Ejercicio 5
use personas_BAE
SELECT * FROM `personas` WHERE localidad = 'Murcia' and salario > '1500'
*/

/* Ejercicio 6
use personas_BAE
SELECT * FROM `personas` WHERE localidad = 'Murcia' and salario > '1500' and funcion = 'Director'
*/

/* Ejercicio 7
use personas_BAE
SELECT * FROM `personas` WHERE funcion = 'Medico' order by apellidos DESC
*/

/* Ejercicio 8
use personas_BAE
SELECT Distinct localidad from personas
*/

/* Ejercicio 9
use personas_BAE
SELECT * from personas where funcion = 'Medico' order by salario DESC
*/

/* Ejercicio 10
use personas_BAE
Select * from personas where apellidos like 'M%'
*/

/* Ejercicio 11
use personas_BAE
Select * from personas where apellidos like '%M%' and funcion = 'CONSERJE'
*/

/* Ejercicio 12
use personas_BAE
Select * from personas where salario BETWEEN '1500' and '2000'
*/

/*Ejercicio 13
use personas_BAE
Select * from personas where funcion in ('Medico', 'CONSERJE')
*/

/* Ejercicio 14
use personas_BAE
Select * from personas WHERE funcion NOT in ('Conserje') and salario > '1500' order by apellidos desc
*/

/* Ejercicio 16
use personas_BAE
SELECT upper(apellidos), cod_hospital FROM `personas` where cod_hospital = '1'
*/

/* Ejercicio 15
use personas_BAE
select * from personas where localidad in ('Murcia', 'CARTAGENA') and cod_hospital = '1'
*/

/* Ejercicio 17
use personas_BAE
SELECT apellidos, char_length(apellidos)FROM personas
*/

/* Ejercicio 18
use personas_BAE
SELECT lower(apellidos), lower(localidad), cod_hospital FROM `personas` WHERE cod_hospital != '1'
*/

/* Ejercicio 19
use personas_BAE
SELECT * FROM `personas` WHERE cod_hospital IN('1', '2') and salario > '1500'
*/

/* Ejercicio 20
use personas_BAE
SELECT * FROM `personas` WHERE cod_hospital != '2' and localidad = 'Murcia'
*/
