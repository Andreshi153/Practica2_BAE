-- Empieza creando la base de datos.
Drop database if exists Futbol;
Create database if not exists Futbol;
Use Futbol;
Create table JUGADORES(
  ID_Jugador int(3) PRIMARY Key ,
  Nombre_Jugador  varchar(50) ,
  fecha_nac date  ,
  Demarcacion varchar(50) ,
  internacional int(3) ,
  id_equipo int(2) ,
  FOREIGN key (id_equipo) references Equipos(id_equipo)
);

Create Table Equipos(
  id_equipo int(2) primary key ,
  nombre_equipo varchar(50) ,
  estadio  varchar(50) ,
  aforo int(6) ,
  ano_fundacion int(4) ,
  ciudad varchar(50),

);

Create table PARTIDOS(
  id_equipo_casa int(2) ,
  id_equipo_fuera int(2)  ,
  fecha date ,
  goles_casa int(2) ,
  goles_fuera int(2) ,
  observaciones varchar(200),


  PRIMARY KEY(id_equipo_casa, id_equipo_fuera, fecha)
);

Create Table GOLES(
  id_equipo_casa int(2),
  id_equipo_fuera int(2) ,
  minuto int(2) primary key ,
  ID_Jugador int(3) ,
  Descripcion varchar(200) ,

  FOREIGN Key(id_equipo_casa,id_equipo_fuera) references PARTIDOS(id_equipo_casa,id_equipo_fuera),

  FOREIGN KEY(ID_Jugador) references JUGADORES(ID_Jugador)
);




-- Una vez creada la base de datos resuelve las modicaciones siguientes:



-- Añadir una columna nueva a la tabla PARTIDOS que indique la hora de comienzo del partido.

Alter table partidos ADD hora time not null

--Establecer las claves primarias (destacadas con negreita) correspondientes a cada tabla.

hecho

--Establecer las claves foráneas correspondiente en la tabla GOLES

hecho
-- Cambiar el nombre de la columna ano_fundacion de la tabla EQUIPOS por fundacion.

alter table equipos change ano_fundacion fundacion date

--Añadir una columna a la tabla EQUIPOS que almacene el anagrama de dicho equipo.

Alter table equipos add equipos_iniciales varchar(3);

--Definir el campo o columna id_equipo en la tabla JUGADORES como clave foránea correspondiente a la clave primaria de la tabla EQUIPOS.

hecho
-- Fijar para todas las tablas el tipo de almacenamiento INNODB así como un charset de latin1 y valor collation latin1_spanish_c1


--Renombrar la tabla GOLES a RESULTADOS.Create database if not exists Futbol;

alter table goles rename resultados
