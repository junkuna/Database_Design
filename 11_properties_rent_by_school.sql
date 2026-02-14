USE `re`;

-- Which properties belong to each school district?

SELECT 
    p.property_id,
    p.address,
    p.monthly_rent,
    s.district_name,
    s.level
FROM
    property p
        JOIN
    school_district s ON p.school_id = s.school_district_id
ORDER BY p.monthly_rent DESC;

-- For Jones College Prep, it belongs to 130 N Garland Ct, 1210 S Indiana Ave, 801 S Financial Pl, 1000 S Michigan Ave, and 155 N Michigan Ave. 
-- For Ogden International School, it involves in 808 N Wells St , 100 W Chestnut St, 345 E Wacker Dr, 225 N Columbus Dr, and 455 E Waterside Dr.
-- For Jones College Prep, it goes to 130 N Garland Ct, 1210 S Indiana Ave, 801 S Financial Pl, 1000 S Michigan Ave, 155 N Michigan Ave.
-- For Wells Community Academy, it goes to 1164 W Madison St, 161 W Kinzie St, 313 W Wolf Point Plz, 125 S Jefferson St, and 855 W Madison St. 
-- 
    