USE `re`;

-- For each property, how many nearby restaurants are recorded, and what are average walking minutes to those restaurants?

SELECT 
    p.address,
    p.neighborhood,
    COUNT(m.restaurant_id) AS num_rest,
    AVG(m.minutes_restaurant) AS avg_minutes
FROM
    property p
        JOIN
    meal AS M ON p.property_id = m.property_id
GROUP BY p.property_id , p.address , p.neighborhood
ORDER BY num_rest DESC