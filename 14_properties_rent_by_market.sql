USE `re`;

-- For each neighborhood, what is the shortest time, and how far are they from a market on average?
-- Do you think it impacts on rent price?

SELECT 
    p.neighborhood,
    MIN(g.minutes_market) AS min_minutes,
    AVG(g.minutes_market) AS avg_minutes,
    AVG(p.monthly_rent) AS avg_rent
FROM
    property p
        JOIN
    grocery g ON p.property_id = g.property_id
GROUP BY p.neighborhood
ORDER BY avg_minutes , avg_rent;

-- The shortest time of neighborhood to market is 4 minutes with average 4.5 minutes.
-- No, the distance from market does not impact on the montly rent price. Because Lakeshore East
-- has shortest distance than South Loop, while South Loop has higher rent average.