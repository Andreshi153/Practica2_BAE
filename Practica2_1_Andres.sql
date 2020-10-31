
/* Creamos la Base de datos. */

Create DataBase Centro;
Use Centro;

/*Aqui Crearemos la tabla Alumnos */

Create Table IF NOT EXISTS Alumnos(
  dni_Alumno Varchar(9) PRIMARY Key Unique,
  nombre varchar(50)  CHARSET utf8 COLLATE utf8_bin not null ,
  apellido1 varchar(50) CHARSET utf8 COLLATE utf8_bin not null ,
  apellido2 Varchar(50)  CHARSET utf8 COLLATE utf8_bin not null,
  direccion Varchar(200)  CHARSET utf8 COLLATE utf8_bin not null ,
  sexo varchar(1) not null,
  Fecha_Nacimiento Date
  check (sexo = 'H', 'M')
);



/* Aqui crearemos la tabla Cursos */

Create table if not exists Cursos(
  Codigo_curso varchar(5) PRIMARY key,
  dni_profesor varchar(9) foreign key not null,
  nombre varchar(50) CHARSET utf8 COLLATE utf8_bin unique not null,
  Maximo_alumnos int(20) not null,
  Fecha_inicio date,
  Fecha_fin date,
  horas Time
);



/* Aqui crearemos la tabla Profesores */

Create table if not exists Profesores(
  dni_profesor Varchar(9) PRIMARY Key Unique,
  nombre varchar(10) CHARSET utf8 COLLATE utf8_bin unique not null,
  apellido1 varchar(15) CHARSET utf8 COLLATE utf8_bin not null ,
  apellido2 varchar(15) CHARSET utf8 COLLATE utf8_bin not null ,
  direccion varchar(30) CHARSET utf8 COLLATE utf8_bin not null ,
  salario decimal(10,2) not null
);
