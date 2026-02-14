USE `re`;

-- Which properties have a park, grocery sotre, shopping mall, and public transportation stop all within 10 minutes walk? 


SELECT p.address, p.neighborhood, p.monthly_rent, 
MIN(np.minutes_park) AS shortest_min_park,
MIN(g.minutes_market) AS shortest_min_market,
MIN(s.minutes_mall) AS shortest_min_mall,
MIN(a.minutes_transportation) AS shortest_min_transport

FROM property p
JOIN near_park np ON p.property_id = np.property_id
AND np.minutes_park <=10

JOIN grocery g ON p.property_id = g.property_id
AND g.minutes_market <=10

JOIN shopping s ON p.property_id = s.property_id
AND s.minutes_mall<=10

JOIN accessibility a ON p.property_id = a.property_id
AND a.minutes_transportation<=10

GROUP BY p.property_id, p.address, p.neighborhood, p.monthly_rent
ORDER BY p.monthly_rent;

-- The properties of 155 N Michigan Ave, 345 E Wacker Dr, 455 E Waterside Dr, 1210 S Indiana Ave, and 855 W Madison St has facilities within 10 minutes walk.