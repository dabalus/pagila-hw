/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
 select category.name, count(film.film_id) sum  from film join film_category on film.film_id = film_category.film_id JOIN category on category.category_id = film_category.category_id  JOIN language on Language.language_id = film.language_id  where language.name ='English' group by category.name ;
