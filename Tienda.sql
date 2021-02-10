Create database if not exists Tienda;
Use Tienda;
Create TABLE fabricantes(
clave_fabricante int PRIMARY KEY,
nombre varchar(30));

Create Table Articulos(
clave_Articulo int PRIMARY KEY,
nombre varchar(30),
precio int ,
clave_fabricante int,
FOREIGN KEY(clave_fabricante) references fabricantes(clave_fabricante) );

INSERT into fabricantes values
('1', 'Kingston'),
('2', 'Adata'),
('3', 'Logitech'),
('4', 'Lexar'),
('5', 'Seagate');

INSERT INTO articulos VALUES
('1','Teclado','100','3'),
('2','Disco duro 300 GB','500','5'),
('3','Mouse','80','3'),
('4','Memoria USB','140','4'),
('5','Memoria RAM','290','1'),
('6','Disco duro extraible 250 GB','650','5'),
('7','Memoria USB','279','1'),
('8','DVD Rom','450','2'),
('9','CD Rom','200','2'),
('10','Tarjeta de Red','180','3');

--a) Obtener todos los datos de los productos de la tienda.

SELECT * from articulos

--b) Obtener los nombres de los productos de la tienda.

SELECT `nombre` FROM `articulos`

--c) Obtener los nombres y precio de los productos de la tienda.

SELECT nombre, precio from articulos

--d) Obtener los nombres de los artículos sin repeticiones.

SELECT DISTINCT nombre from articulos

--e) Obtener todos los datos del artículo cuya clave de producto es ‘5’.

SELECT * FROM `articulos` WHERE clave_Articulo = '5'

--f) Obtener todos los datos del artículo cuyo nombre del producto es ‘’Teclado”.

SELECT * from articulos where nombre = 'Teclado'

--g) Obtener todos los datos de la Memoria RAM y memorias USB.

SELECT * FROM `articulos` WHERE nombre = 'Memoria Ram' or nombre = 'Memoria USB'

--h) Obtener todos los datos de los artículos que empiezan con ‘M’.

SELECT * FROM `articulos` WHERE nombre like 'M%'

--i) Obtener el nombre de los productos donde el precio sea 100.

SELECT * FROM `articulos` WHERE precio = '100'

--j) Obtener el nombre de los productos donde el precio sea mayor a 200.

SELECT * FROM `articulos` WHERE precio > '200'

--k) Obtener todos los datos de los artículos cuyo precio este entre 100 y 350.

SELECT * FROM `articulos` WHERE precio BETWEEN '100' and '360'

--l) Obtener el precio medio de todos los productos.

SELECT AVG(precio) FROM `articulos`

--m) Obtener el precio medio de los artículos cuyo código de fabricante sea 2.

SELECT AVG(precio), clave_fabricante FROM `articulos` where clave_fabricante = '2'

--n) Obtener el nombre y precio de los artículos ordenados por Nombre.

SELECT nombre, precio FROM `articulos` order by nombre

--o) Obtener todos los datos de los productos ordenados descendentemente por Precio.

SELECT * FROM `articulos` order by precio desc

--p) Obtener el nombre y precio de los artículos cuyo precio sea mayor a 250 y ordenarlos descendentemente por precio y luego ascendentemente por nombre.

SELECT * FROM `articulos` WHERE precio > '250' order by precio desc ,nombre asc

--q) Obtener un listado completo de los productos, incluyendo por cada articulo los datos del articulo y del fabricante.

SELECT * FROM `articulos`, fabricantes WHERE articulos.clave_fabricante = fabricantes.clave_fabricante

--r) Obtener la clave de producto, nombre del producto y nombre del fabricante de todos los productos en venta.

SELECT articulos.nombre, articulos.precio, articulos.clave_Articulo, fabricantes.nombre FROM `articulos`, fabricantes

--s) Obtener el nombre y precio de los artículos donde el fabricante sea Logitech ordenarlos alfabéticamente por nombre del producto.

SELECT articulos.nombre, articulos.precio, fabricantes.nombre FROM `articulos`, fabricantes WHERE fabricantes.nombre = 'Logitech' order by articulos.nombre

--t) Obtener el nombre, precio y nombre de fabricante de los productos que son marca Lexar o Kingston ordenados descendentemente por precio.

SELECT articulos.nombre, articulos.precio, fabricantes.nombre FROM `articulos`, fabricantes WHERE fabricantes.nombre = 'Lexar' or fabricantes.nombre = 'Kingston' order by articulos.precio desc

--u) Añade un nuevo producto: Clave del producto 11, Altavoces de 120 del fabricante 2.

INSERT into articulos values ('11', 'Altavoces de 120', '200', '2' )

--v) Cambia el nombre del producto 6 a ‘Impresora Laser’.

UPDATE ARTICULOS

    SET Nombre="Impresora Laser"

    WHERE clave_Articulo = 6;




--w) Aplicar un descuento del 10% a todos los productos.

UPDATE ARTICULOS SET Precio = Precio * 0.9

--x) Aplicar un descuento de 10 a todos los productos cuyo precio sea mayor o igual a 300.

UPDATE ARTICULOS SET Precio = Precio * 0.9 where precio >= '300'

--y) Borra el producto numero 6.

DELETE FROM `articulos` WHERE clave_Articulo = '6' 
