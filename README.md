# Real Estate Environment Insight System

## Why this project
 Real Estate Environment Insight System is designed to help homebuyers, real estate agents, and
 property investors make more informed decisions by integrating property listings with surroundi
 ng environmental and lifestyle data. The system will collect and organize information about prop
 erties and nearby features such as schools, restaurants, parks, transportation options, malls, and
 markets. By combining these data points into one interface, users can easily evaluate not only the
 property itself but also the quality of life in its surrounding area.
 Users of the system include homebuyers looking for suitable neighborhoods, real estate professio
 nals who advise clients on investment opportunities, and developers seeking areas with growth p
 otential. The system may also be valuable for individual homeowners wishing to assess the mark
 et value of their property based on local amenities.
 
 The problem that needs to be solved is the fragmentation of property and environmental data that
 currently requires users must navigate multiple websites for applications such as one for listings,
 another for schools, and others for nearby shops, transportation routes, or parks considered as a f
 acility. This process is time-consuming and makes it difficult to compare properties holistically.
 This addresses this issue by consolidating all relevant data into one cohesive platform. It provide
 s users with integrated insights about property attributes and external environmental attributes, c
 onsidering their needs in their daily life while searching for their fitted spots of the properties bas
 ed on their needs. Another problem is the property price prediction for investors. It requires insig
 hts into the surroundings of each property that will cause changes in housing prices. This will pro
 vide an interactive process of identifying the impact of housing prices for data decision-making f
 or investors.
 
 The system’s uniqueness lies in its focus on environmental accessibility and livability. It evaluate
 s proximity to essential amenities such as schools, restaurants, and public transport. The inclusio
 n of metrics such as distance from property and surroundings of facilities, allows users to measur
 e quality as well as quantity. Additionally, since the Real Estate Environmental Insight System w
 ill be developed as a prototype, it can be customized to include specialized ranking algorithms or
 unique local datasets that may not be available in existing systems.
 
 The scope of the prototype will focus on the core data integration and visualization function of a
 relational database system. Specifically, the prototype will allow users to search for properties an
 d view detailed information about their surrounding facilities, including at least one example of e
 ach category of school district, restaurant, market, mall, transportation, and park. These are the m
 ost common entities that users use in the process of identifying the real estate market. Some adva
 nced features, such as automated data imports from third-party APIs, live price updates, or predic
 tive market analysis, will not be included in this initial prototype due to time constraints. Instead,
 the focus will be on creating a functional and fundamental relational database model, user interface mockups, and sample queries that demonstrate how the system can retrieve and present meaningful insights

## Tech Stack 
- MySQL (schema + queries)

- SQL scripts for data load, analytics, and CRUD operations

- ERD system prototype documentation

## Data Model Overview
- **Core Entity**
  - Property
  - School_district
  - Restaurant
  - Market
  - Mall
  - Transportation
  - Park

- **Attributes**
   - City (property)
   - Address (property)
   - Zip_code (property)
   - Bedroom (property)
   - Bathroom (property)
   - Monthly_rent (property)
   - Neighborhood(transportation, park, mall, market, restaurant, property)
   - Name (park, school_district, restaurant, mall)
   - Type (market, mall, restaurant,)
   - Mode (Transportation)
   - Stop name (Transportation)
   - Minutes walking from property (meal, shopping, accessibility, grocery, near_park)

- **Relationship**
  - meal
  - shopping
  - accessibility
  - grocery
  - near_park


## Structure
- PDF
  - database_schema_erd.pdf

- SQL
  -   10_restore_populated_database.sql
  - 11_properties_rent_by_school.sql
  - 12_properties_rent_by_near_park.sql
  - 13_properties_rent_by_neighborhood.sql
  - 14_properties_rent_by_market.sql
  - 15_properties_restaurant_list.sql
  - 16_properties_by_facilities_list.sql
  - 50_add_a_new_property_with_facilities.sql
  - 51_transfer_property_rent_and_bedrooms.sql
  - 52_delete_property_and_related_facilities.sql
  - 54_transfer_property_school_district.sql

## How to Run
1. Open MySQL Workbench (or any MySQL client)
2. Run the restore script to create the schema and load sample data:
   - `10_retore_populated_database.sql`
3. Run any query scripts you want (examples below)

- **Analytics / reporting:**
  -  `11_properties_rent_by_school.sql` — rent + school district
  -  `12_properties_rent_by_near_park.sql` — properties near parks (<10 min)
  -  `13_properties_rent_by_neighborhood.sql` — count + avg rent by neighborhood
  -  `14_properties_rent_by_market.sql` — market proximity stats + avg rent by neighborhood
  -  `15_properties_restaurant_list.sql` — restaurant count + avg minutes per property
  -  `16_properties_by_facilities_list.sql` — properties meeting multi-facility time thresholds

- **CRUD / operations:**
  -  `50_add_a_new_property_with_facilities.sql` — add a new property + facility links
  -  `51_transfer_property_rent_and_bedrooms.sql` — update rent/bed/bath
  -  `54_transfer_property_school_district.sql` — change school district assignment
  -  `52_delete_property_and_related_facilities.sql` — delete a property and its related links

## Skills Demonstrated
 - ERD design and relational modeling (1:N + M:N relationships)

 - Junction tables with additional attributes (minutes-to-facility)

 - SQL analytics (GROUP BY, aggregates, filtering, ordering)

 - Operational SQL scripts that reflect real workflows (insert/update/delete/transfer)
   
 - Thinking about query correctness (duplicate rows from multi-joins) and maintainability
