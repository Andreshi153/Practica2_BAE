Drop database if exists Concesionario;
Create database Concesionario;
use Concesionario;



Create table Coche(
Matricula varchar(10) primary key,
Marca varchar(20) not null,
Color varchar(15) not null,
Modelo varchar(50) not null,
PVP int not null
check (PVP >= 10000 and PVP <= 40000),
check(Color in('rojo','azul','Verde')),

);

Create table Revision(
  Cod_revision varchar(100) primary key,
  fecha date

);

Create table Cliente(
  Cod_cliente varchar(10) primary key,
  NIF varchar(10) not null,
  Nombre varchar(20) not null,
  Direccion varchar(50) not null,
  telefono  varchar(9) not null ,
  Ciudad varchar(100) not null
  check(telefono in ('6', '9'))

);

Create table Operacion(
  Cod_operacion varchar(100) primary key,
  Descripcion varchar(100) not null,
  Horas varchar(4) not null
check (horas <= 10)
);

Create table material(
   Cod_material varchar(100) primary key,
   Nombre varchar(100) not null,
   Precio int not null

);

Create table Necesita(
  Cantidad int Default(1)
);
