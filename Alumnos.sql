Create database if not exists Alumnos_BAE;
Use Alumnos_BAE;
create table alumnos(
	expediente int(10) primary key,
	nombre varchar(50),
	localidad varchar(50),
	fecha_nac date,
	direccion varchar(50),
	curso int(2),
	nivel varchar(10),
	faltas int(3));

insert into alumnos values(123456,'Juan Miguel Soler Bakero','Murcia','1995/10/10','Gran Vía, 2, 4A',1,'ESO',15);
insert into alumnos values(654321,'Laura Gómez Fernández','Lorca','1994/10/05','Junterones, 10, 5B',2,'ESO',25);
insert into alumnos values(765432,'Beatriz Martínez Hernández','Murcia','1993/05/05','Plaza Mayor, 6, 3B',3,'ESO',5);
insert into alumnos values(987654,'Diego Marín Llorente','Alhama de Murcia','1990/03/06','Diego de la Cierva, 5, 7A',1,'BACHILLER',34);

insert into alumnos values(445544,'Juan Francisco Cano Riquelme','Murcia','1992/01/07','Plaza de Belluga, 3, 4A',4,'ESO',13);
insert into alumnos values(223322,'Raquel Riquelme Rubio','Lorca','1990/23/11','San Juan, 14, 3B',1,'BACHILLER',7);

insert into alumnos values(9988877,'Cristina Sánchez Bermejo','Murcia','95/03/19','Torre de Romo, 7',1,'ESO',1);
insert into alumnos values(334455,'Pedro Jesús Rodríguez Soler','Alhama de Murcia','94/10/03','Camino de Badel, 4',2,'ESO',11);
insert into alumnos values(334400,'Javier Ramínez Rodríguez','Murcia','93/05/27','Gran Vía, 4, 3A',3,'ESO',0);
insert into alumnos values(993322,'Gema Rubio Colero','Lorca','92/09/09','Plaza Fuensanta, 5, 7A',1,'BACHILLER',19);
insert into alumnos values(554411,'Joaquín Herníndez Gonzilez','Lorca','91/12/12','Junterones, 4, 5A',2,'BACHILLER',14);

/* Ejercicio 1
use Alumnos_BAE;
SELECT * From alumnos
*/

/* Ejercicio 2
use Alumnos_BAE
Select nombre, localidad, fecha_nac from alumnos
*/

/* Ejercicio 3
use Alumnos_BAE
SELECT nombre as 'Nombre y apellidos' FROM `alumnos`
*/

/* Ejercicio 4
use Alumnos_BAE
SELECT nombre, `faltas`, (faltas * 2) as 'Faltas de asistencia' FROM `alumnos`
*/

/* Ejercicio 5
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE localidad = 'Lorca'
*/

/* Ejercicio 6
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE localidad = 'Murcia' or localidad = 'Alhama de Murcia'
*/

/* Ejercicio 7
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE localidad = 'Murcia' and curso = '1' and nivel = 'ESO'
*/

/* Ejercicio 8
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE localidad = 'Lorca' and curso = '2' and nivel = 'Bachillerato' and faltas = '10'
*/

/* Ejercicio 9
use Alumnos_BAE
SELECT * FROM `alumnos` where localidad = 'Murcia' ORDER by nombre
*/

/* Ejercicio 10
use Alumnos_BAE
SELECT * FROM `alumnos` order by nivel, curso
*/

/* Ejercicio 11
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE faltas > '10' and curso IN ( '1', '2' )
*/

/* Ejercicio 12
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE `faltas` < 10 and curso in ('3', '4') and localidad = 'Murcia'
*/

/* Ejercicio 13
use Alumnos_BAE
SELECT DISTINCT curso FROM `alumnos`
*/

/* Ejercicio 14
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE faltas < '10' and `nivel` = 'ESO' and curso = '1'
*/

/* Ejercicio 15
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE nombre like 'B%'
*/

/* Ejercicio 16
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE localidad = 'Murcia' and nombre like '%O'
*/

/* Ejercicio 17
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE curso = '1' and nivel = 'ESO' and nombre like '_u%'
*/

/* Ejercicio 18
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE faltas IS Null
*/

/* Ejercicio 19
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE faltas BETWEEN '10' and '20' order by nombre
*/

/* Ejercicio 20
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE localidad = 'Murcia' and faltas BETWEEN '10' and '20'
*/

/* Ejercicio 21
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE curso = '1' and nivel = 'ESO' and localidad = 'Murcia' and faltas BETWEEN '10' and '20'
*/

/* Ejercicio 22
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE faltas < '10' and faltas > '20'
*/

/* Ejercicio 23
use Alumnos_BAE
Select * from alumnos where fecha_nac BETWEEN '1993-01-12' and '1994-12-31' order by nombre
*/

/* Ejercicio 24
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE curso in ('1', '2')
*/

/* Ejercicio 25
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE curso in ('3', '4') and localidad = 'Murcia'
*/

/* Ejercicio 26
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE nivel = 'Bachiller' ORDER by curso DESC, nombre desc
*/

/* Ejercicio 27
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE nivel = 'ESO' and curso in('1','2') ORDER by nombre
*/

/* Ejercicio 28
use Alumnos_BAE
SELECT * FROM `alumnos` WHERE nombre like 'J%' and faltas > '10' and nivel = 'ESO' Order by curso, nombre
*/

/* Ejercicio 29
use Alumnos_BAE
SELECT expediente, nombre, curso, nivel FROM `alumnos` where nivel = 'ESO' order by curso, nivel asc, nombre DESC
*/

/* Ejercicio 30
use Alumnos_BAE
SELECT UPPER(nombre), localidad FROM `alumnos` WHERE localidad = 'Murcia'
*/

/* Ejercicio 31
use Alumnos_BAE
SELECT upper(nombre), lower(localidad) FROM `alumnos` order by localidad desc
*/

/* Ejercicio 32
use Alumnos_BAE
SELECT concat(nombre, localidad) ,REPLACE( nivel,'Bachiller', 'Bachillerato') as nivel FROM `alumnos`
*/

/* Ejercicio 33
use Alumnos_BAE
SELECT nombre, length(nombre)FROM `alumnos`
*/

/* Ejercicio 34
use Alumnos_BAE
SELECT nombre, month(fecha_nac), year(fecha_nac)FROM `alumnos`
*/

/* Ejercicio 35
use Alumnos_BAE
SELECT nombre, 2008-year(fecha_nac) as edad FROM `alumnos`
*/
