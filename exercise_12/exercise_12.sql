-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT 
  city.city, sum(payment.amount)
FROM
  city
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer on address.address_id = customer.address_id
INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY city.city_id
ORDER BY sum desc
LIMIT 10