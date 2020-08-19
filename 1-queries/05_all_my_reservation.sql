SELECT properties.id AS id, properties.title AS title, cost_per_night,start_date, AVG(rating) AS average_rating 
FROM properties
JOIN reservations ON properties.id=reservations.property_id
JOIN property_reviews ON properties.id=property_reviews.property_id
WHERE reservations.guest_id=1 
AND end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;
