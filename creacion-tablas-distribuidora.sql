use distribuidora_libre; -- Nombre de la base

-- Creacion de las tablas
-- Tabla de carritos

create table carritos (
	id_carrito char(20),
	id_usuario char(20),
	primary key(id_carrito),
	foreign key(id_usuario) references usuarios(id_usuario)
);

-- Tabla de usuarios

create table usuarios (
	id_usuario char(20),
    nombre char(20),
    apellido char(20),
    edad int,
    email char(30),
    rol char(15),
    contraseña char(20),
    primary key (id_usuario)
);

-- Tablas de productos

create table productos (
	id_producto char(20),
	id_usuario char(20),
	titulo char(20),
	stock int,
	price int,
    descripcion char(30),
    primary key(id_producto),
    foreign key(id_usuario) references usuarios(id_usuario)
);

-- Tabla de tickets

create table tickets (
	id_ticket char(20),
	id_carrito char(20),
	id_usuario char(20),
	compra_fecha date,
	valor int,
    primary key(id_ticket),
    foreign key(id_carrito) references carritos(id_carrito),
    foreign key(id_usuario) references usuarios(id_usuario)
);

-- Tabla de productos_carrito

create table productos_carrito (
	id_producto char(20),
	id_carrito char(20),
	cantidad int,
    foreign key(id_producto) references productos(id_producto),
    foreign key(id_carrito) references carritos(id_carrito)
);

-- Tabla de documentacion

create table documentacion (
	id_documento char(20),
	id_usuario char(20),
	aprobado boolean,
	primary key(id_documento),
    foreign key(id_usuario) references usuarios(id_usuario)
);