/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select  country, sum(amount) profit  from payment join rental on payment.rental_id = rental.rental_id JOIN customer on customer.customer_id = rental.customer_id JOIN address on address.address_id = customer.address_id JOIN city on city.city_id =address.city_id JOIN country on country.country_id = city.country_id group by country order by country;
