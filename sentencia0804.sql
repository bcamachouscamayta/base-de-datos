/*
ACTIVIDAD 1
*/
SELECT 
    f.title AS titulo_pelicula,
    a.address AS direccion,
    c.city AS ciudad,
    co.country AS pais
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN store s ON i.store_id = s.store_id
JOIN address a ON s.address_id = a.address_id
JOIN city c ON a.city_id = c.city_id
JOIN country co ON c.country_id = co.country_id
WHERE f.title = 'ACADEMY DINOSAUR';
/*
ACTIVIDAD 2
*/
 SELECT 
    f.title AS titulo,
    c.name AS categoria,
    l.name AS idioma,
    f.rating,
    f.length AS duracion_minutos
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN language l ON f.language_id = l.language_id
WHERE f.length BETWEEN 60 AND 120;
/*
ACTIVIDAD 3
*/
SELECT 
    s.first_name AS nombre,
    s.last_name AS apellido,
    a.address AS direccion,
    ci.city AS ciudad,
    co.country AS pais
FROM staff s
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id;
ACTIVIDAD 4
SELECT 
    f.title AS titulo,
    MIN(r.return_date) AS fecha_minima_devolucion,
    MAX(r.return_date) AS fecha_maxima_devolucion
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title;
/*
ACTIVIDAD 5
*/
SELECT 
    c.first_name || ' ' || c.last_name AS cliente,
    f.title AS pelicula,
    r.rental_date AS fecha_alquiler,
    r.return_date AS fecha_devolucion,
    s.first_name || ' ' || s.last_name AS encargado,
    st.store_id AS tienda,
    a.address AS direccion,
    ci.city AS ciudad,
    co.country AS pais
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN staff s ON r.staff_id = s.staff_id
JOIN store st ON s.store_id = st.store_id
JOIN address a ON st.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id;
/*
ACTIVIDAD 6
*/ 
SELECT 
    rating,
    COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY rating;
/*
ACTIVIDAD 7
*/ 
SELECT 
    c.name AS categoria,
    COUNT(fc.film_id) AS cantidad_peliculas
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;