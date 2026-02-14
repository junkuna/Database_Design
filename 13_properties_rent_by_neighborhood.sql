USE `re`;

-- For each neighborhood, how many properties are there? Which property has higher rent on average?

SELECT 
    p.neighborhood,
    COUNT(p.property_id) AS num_properties,
    AVG(p.monthly_rent) AS avg_rent
FROM
    property p
GROUP BY p.neighborhood
ORDER BY num_properties DESC;

-- Loop has 3, South Loop has 3, West Loop has 2, Lakeshore East has 2, Near North Side 2, and River North has 2 properties. 
-- The Loop side neighbor has most rent payment monthly.
