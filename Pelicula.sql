

-- 1
CREATE DATABASE 'peliculas';

-- 2
CREATE TABLE peliculas (
	id SMALLINT PRIMARY KEY,
	pelicula VARCHAR(100),
	anio_estreno VARCHAR(4),
	director VARCHAR(50)
);

CREATE TABLE reparto (
	id SMALLINT,
	actor VARCHAR(50),
	FOREIGN KEY (id) REFERENCES peliculas(id)
);


SELECT * FROM peliculas;
SELECT * FROM reparto;

-- 3
SELECT id FROM peliculas WHERE pelicula = 'Titanic';
-- 4
SELECT actor FROM reparto WHERE id = 2;
-- 5
SELECT COUNT(actor) AS cantidad_peliculas
FROM reparto
WHERE actor = 'Harrison Ford';
-- 6 
SELECT pelicula, anio_estreno
FROM peliculas 
WHERE anio_estreno >= '1990' AND anio_estreno <= '1999'
ORDER BY pelicula ASC;
-- 7
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo
FROM peliculas;
-- 8
SELECT MAX(LENGTH(pelicula)) AS max_longitud_titulo
FROM peliculas;



