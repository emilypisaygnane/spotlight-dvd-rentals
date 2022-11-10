-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
  country.country, avg(payment.amount)
FROM
  country
LEFT JOIN city ON country.country_id = city.country_id
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer ON address.address_id = customer.address_id
INNER JOIN payment on customer.customer_id = payment.customer_id
GROUP BY country.country_id
ORDER BY avg desc
LIMIT 10
