Create database if not exists pruebas;
use pruebas;
CREATE TABLE tblUsuarios (
   idx INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compañia VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);

INSERT INTO tblUsuarios
VALUES
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');



--BLOQUE 1
--Ejercicio 1
use pruebas;
select nombre from tblusuarios


-- Ejercicio 2
use pruebas;
SELECT nombre, sexo, saldo FROM `tblusuarios` WHERE sexo = 'M'

-- Ejercicio 3
use pruebas;
SELECT nombre, telefono, marca FROM `tblusuarios` WHERE marca = 'Sony' or marca = 'Blackberry' or marca = 'Nokia'

--Ejercicio 4
use pruebas;
SELECT * FROM `tblusuarios` WHERE saldo = '0' and activo = '0'

--Ejercicio 5
use pruebas;
SELECT * FROM `tblusuarios` WHERE nivel = '1' or nivel = '2' or nivel = '3'

--Ejercicio 6
use pruebas;
SELECT telefono, saldo FROM `tblusuarios` WHERE saldo <= '300'

--Ejercicio 7
SELECT * FROM `tblusuarios` WHERE compañia = 'Nextel'

--Ejercicio 8
SELECT nombre, Count(compañia) as PorCompañia FROM `tblusuarios`GROUP by compañia order by compañia

--Ejercicio 9
SELECT nombre, Count(nivel) as porNivel FROM `tblusuarios`GROUP by nivel order by nivel

--Ejercicio 10
SELECT usuario FROM `tblusuarios` WHERE nivel = '2'

--Ejercicio 11
SELECT usuario FROM `tblusuarios` WHERE email like '%@gmail.com'

--Ejercicio 12
SELECT nombre, telefono, marca, usuario FROM `tblusuarios` WHERE marca = 'LG' or marca = 'motorola' or marca = 'samsung'

--BLOQUE 12
--Ejercicio 13
SELECT nombre, telefono, marca FROM `tblusuarios` WHERE not marca = 'Lg ' and not marca = 'Samsung'

--Ejercicio 14
SELECT usuario, telefono, compañia FROM `tblusuarios` WHERE compañia = 'IUSACELL'

--Ejercicio 15
SELECT usuario, telefono, compañia FROM `tblusuarios` WHERE not compañia = 'telcel'

--Ejercicio 16
SELECT AVG(saldo) FROM `tblusuarios` WHERE marca = 'Nokia'

--Ejercicio 17
SELECT usuario, telefono, compañia FROM `tblusuarios` WHERE compañia = 'iusacell' OR compañia = 'Axel'

--Ejercicio 18
SELECT * FROM `tblusuarios` WHERE email not like '%yahoo.com'

--Ejercicio 19
SELECT usuario, telefono, compañia FROM `tblusuarios` WHERE not compañia = 'Telcel' and not compañia = 'Iusacell'

--Ejercicio 20
SELECT usuario, telefono, compañia FROM `tblusuarios` WHERE compañia = 'unefon'

--Ejercicio 21
 SELECT marca FROM `tblusuarios` order by marca desc

 --Ejercicio 22
 SELECT compañia FROM `tblusuarios`  ORDER by rand()

 --Ejercicio 23
SELECT usuario, nivel FROM `tblusuarios` WHERE nivel = '0' or nivel = '2'

--Ejercicio 24
SELECT avg(saldo) FROM `tblusuarios` WHERE marca = 'LG'

--BLOQUE 3
--Ejercicio 25
SELECT usuario, nivel FROM `tblusuarios` WHERE nivel = '1' or nivel = '3'

--Ejercicio 26
SELECT nombre, telefono FROM `tblusuarios` WHERE not marca = 'Blackberry'

--Ejercicio 27
SELECT usuario, nivel FROM `tblusuarios` WHERE nivel = '3'

--Ejercicio 28
SELECT usuario, nivel FROM `tblusuarios` WHERE nivel = '0'

--Ejercicio 29
SELECT usuario, nivel FROM `tblusuarios` WHERE nivel = '1'

--Ejercicio 30
SELECT sexo, COUNT(*) FROM `tblusuarios` GROUP by sexo

--Ejercicio 31
SELECT usuario, telefono FROM `tblusuarios` WHERE compañia = 'At&t'

--Ejercicio 32
SELECT compañia FROM `tblusuarios` order by compañia desc

--Ejercicio 33
SELECT usuario, activo FROM `tblusuarios` WHERE activo = '0'

--Ejercicio 34
 SELECT usuario, telefono, saldo FROM `tblusuarios` WHERE saldo = '0'

 --Ejercicio 35
 SELECT Min(saldo), sexo FROM `tblusuarios` WHERE sexo = 'H'

 --Ejercicio 36
 SELECT telefono FROM `tblusuarios` WHERE saldo > '300'

 --BLOQUE 4
 --Ejercicio 37
 SELECT marca, COUNT(*) FROM `tblusuarios` GROUP by marca

 --Ejercicio 38
 SELECT nombre, telefono FROM `tblusuarios` WHERE not marca = 'LG'

 --Ejercicio 39
 SELECT compañia FROM `tblusuarios` order by compañia asc

 --Ejercicio 40
 SELECT sum(saldo) FROM `tblusuarios` WHERE compañia = 'Unefon'

 --Ejercicio 41
 SELECT email FROM `tblusuarios` WHERE email like '%@hotmail.com'

 --Ejercicio 42
 SELECT nombre FROM `tblusuarios` WHERE saldo = '0' or activo = '0'

 --Ejercicio 43
 SELECT usuario, telefono FROM `tblusuarios` WHERE compañia = 'Iusacell' or compañia = 'Telcel'

 --Ejercicio 44
SELECT marca FROM `tblusuarios` order by marca asc

--Ejercicio 45
SELECT marca FROM `tblusuarios` order by rand()

--Ejercicio 46
SELECT usuario, telefono FROM `tblusuarios` WHERE compañia = 'iusacell' or compañia = 'Unefon'

--Ejercicio 47
SELECT nombre, telefono FROM `tblusuarios` WHERE not marca = 'Motorola' and not marca= 'Nokia'

--Ejercicio 48
SELECT sum(Saldo) , compañia FROM `tblusuarios` WHERE compañia = 'Telcel' 
