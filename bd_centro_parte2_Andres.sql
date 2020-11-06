
/* Creamos la Base de datos. */

Create DataBase Centro;
Use Centro;

/*Aqui Crearemos la tabla Alumnos */

Create Table IF NOT EXISTS Alumnos(
  dni Varchar(9) PRIMARY Key,
  nombre varchar(50)  CHARSET utf8 COLLATE utf8_bin not null ,
  apellido1 varchar(50) CHARSET utf8 COLLATE utf8_bin not null ,
  apellido2 Varchar(50)  CHARSET utf8 COLLATE utf8_bin not null,
  direccion Varchar(200)  CHARSET utf8 COLLATE utf8_bin not null ,
  sexo varchar(1) not null check (sexo in('H', 'M')),
  Fecha_Nacimiento Date,
  Edad int(3) not null check (Edad between 14 and 65)
);
Alter table Alumnos Drop check sexo;
Drop table Alumnos;

/* Aqui crearemos la tabla Cursos */

Create table if not exists Cursos(
  Codigo varchar(5) PRIMARY key,
  dni_profesor varchar(9) not null,
  nombre varchar(50)  CHARSET utf8 COLLATE utf8_bin not null,
  Maximo_alumnos int(20) not null check (Maximo_alumnos >= 15),
  Fecha_inicio date,
  Fecha_fin date,
  horas int(4) not null check (Fecha_inicio < Fecha_fin and horas in(30, 40, 60))
);



/* Aqui crearemos la tabla Profesores */

Create table if not exists Profesores(
  dni Varchar(9) PRIMARY Key,
  nombre varchar(10) CHARSET utf8 COLLATE utf8_bin not null,
  apellido1 varchar(15) CHARSET utf8 COLLATE utf8_bin not null ,
  apellido2 varchar(15) CHARSET utf8 COLLATE utf8_bin not null ,
  direccion varchar(30) CHARSET utf8 COLLATE utf8_bin not null ,
  salario decimal(10,2) not null
);
Alter table Profesores drop column direccion;
Alter table Profesores drop PRIMARY key, add PRIMARY key(Nombre, apellido1, apellido2);
RENAME table profesores to Tutores;

Create USER 'Andres'@'localhost' Indentified by 'BD02';
Grant All PRIVILEGES Except UPDATE , Alter ON Centro.Cursos To 'Andres'@'localhost';
