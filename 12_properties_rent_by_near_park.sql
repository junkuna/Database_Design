USE `re`;

-- Which properties are within walking distance of a park less than 10 minutes with park? 
-- Does nearest park has benefits on renting price?

SELECT 
    p.property_id,
    p.monthly_rent,
    p.address,
    p.neighborhood,
    pk.park_name,
    np.minutes_park
FROM
    property p
        JOIN
    near_park np ON np.property_id = p.property_id
        JOIN
    park pk ON np.park_id = pk.park_id
WHERE
    np.minutes_park < 10
ORDER BY pk.park_neighbor , np.minutes_park , pk.park_name;

-- The property id of 1 to 10 properties have less than 10 minutes distance with its near park. 
-- The distance does provide benefit on the renting price that 808 N Wells St property has 6 minutes alway from Washington Square Park and it higher
-- rent than 100 W Chestnut St in same park with less renting price.