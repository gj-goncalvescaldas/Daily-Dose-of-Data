# 9688_Churro_Activity_Date

Find the inspection dates and associated risk categories of all facilities named **'STREET CHURROS'** that received a **score below 95** during their health inspections.

You are working with the `los_angeles_restaurant_health_inspections` table which contains detailed information about restaurant inspections in Los Angeles, including facility name, inspection date, score, and risk classification.

Return the following columns:
- `activity_date`: The date when the inspection took place.
- `pe_description`: The risk category associated with the inspection.

Only include records where the facility name is exactly 'STREET CHURROS' and the score is less than 95.
