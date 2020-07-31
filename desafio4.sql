CREATE DATABASE desafio4;

CREATE TABLE autor(
id_autor SERIAL PRIMARY KEY,
nombre_autor VARCHAR);

CREATE TABLE editorial(
id_editorial SERIAL PRIMARY KEY,
nombre_editorial VARCHAR);

CREATE TABLE lector(
id_lector SERIAL PRIMARY KEY,
nombre_lector VARCHAR);

CREATE TABLE libros(
id_libro SERIAL PRIMARY KEY,
nombre_libro VARCHAR);

CREATE TABLE prestamo(
id_prestamo SERIAL PRIMARY KEY,
id_lector INT,
id_libro INT,
fecha_devolucion DATE,
FOREIGN KEY (id_lector) REFERENCES lector(id_lector),
FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
);

CREATE TABLE rel_libro_edit(
FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
FOREIGN KEY (id_editorial) REFERENCES editorial(id_editorial),
);


CREATE TABLE rel_libro_autor(
FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
);
