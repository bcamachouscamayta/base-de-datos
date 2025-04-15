/*este codigo sirve para meterce a un en si y todos sus datos*/
ON fa.film_id = f.film_id

INSERT INTO actor (actor_id,first_name,last_name,last_update)
VALUES("201","tomas","mayorga","2020-12-23 07:12:29")

UPDATE actor 
set first_name = "fede", last_name = "villace"
WHERE last_name = "mayorga" AND first_name = "tomas"

/*esto se usa para borrar los datos de la columna*/
DELETE FROM actor
WHERE actor_id = 201