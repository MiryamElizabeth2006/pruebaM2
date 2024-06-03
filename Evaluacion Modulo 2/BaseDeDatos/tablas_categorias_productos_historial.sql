drop table if exists historial_movimientos;
drop table if exists productos;
drop table if exists categorias;

--tabla categorias
create table categorias(
	id_categoria char(4) not null,
	nombre varchar(50) not null,
	constraint categorias_pk primary key(id_categoria)
);


--tabla productos
create table productos(
	id_productos char(5) not null,
	nombre varchar(50) not null,
	precio_venta money not null,
	precio_compra money not null,
	categoria_id char(4) not null,
	constraint categorias_fk foreign key(categoria_id) references categorias(id_categoria),
	constraint productos_pk primary key(id_productos)
);


--tabla historial_movimientos
create table historial_movimientos(
	id_movimientos int not null,
	producto_id char(5) not null,
	cantidad int not null,
	fecha_movimiento TIMESTAMP not null,
	constraint productos_fk foreign key(producto_id) references productos(id_productos),
	constraint historial_movimientos_fk primary key(id_movimientos)
);

--inserts en tablas
--insert tabla categoria
insert into categorias(id_categoria, nombre)
values('C001', 'Bebidas');
insert into categorias(id_categoria, nombre)
values('C002', 'Snacks');
insert into categorias(id_categoria, nombre)
values('C003', 'Golosinas');


--insert tabla productos
insert into productos(id_productos, nombre, precio_venta, precio_compra, categoria_id)
values('P0001', 'Coca cola 300 ml', 0.7, 0.55, 'C001');
insert into productos(id_productos, nombre, precio_venta, precio_compra, categoria_id)
values('P0002', 'Coca cola 1000 ml', 1.0, 0.8, 'C001');
insert into productos(id_productos, nombre, precio_venta, precio_compra, categoria_id)
values('P0003', 'Doritos 50g', 0.5, 0.42, 'C002');
insert into productos(id_productos, nombre, precio_venta, precio_compra, categoria_id)
values('P0004', 'Manicho', 0.25, 0.21, 'C003');
insert into productos(id_productos, nombre, precio_venta, precio_compra, categoria_id)
values('P0005', 'Tango', 0.5, 0.42, 'C003');


--insert tabla historial_movimientos
insert into historial_movimientos(id_movimientos, producto_id, cantidad, fecha_movimiento)
values(1, 'P0001', 10, '28/10/2020 9:45');
insert into historial_movimientos(id_movimientos, producto_id, cantidad, fecha_movimiento)
values(2, 'P0002', -3, '28/10/2020 10:49');
insert into historial_movimientos(id_movimientos, producto_id, cantidad, fecha_movimiento)
values(3, 'P0003', 5, '28/10/2020 12:23');

select * from categorias;
select * from productos;
select * from historial_movimientos;













































































