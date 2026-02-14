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

## Structure
