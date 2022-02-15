/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
select title, sum(amount)  profit  from film join inventory on film.film_id = inventory.film_id JOIN rental on rental.inventory_id = inventory.inventory_id join payment on payment.rental_id = rental.rental_id group by title order by profit desc;
