/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
select title from film join film_category on film.film_id = film_category.film_id JOIN category on category.category_id = film_category.category_id where category.name = 'Family';
