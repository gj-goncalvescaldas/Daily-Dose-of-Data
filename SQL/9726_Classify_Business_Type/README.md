# 9726_Classify_Business_Type

Given a dataset of business inspections in San Francisco, your task is to classify each business into one of the following categories based on their name: **restaurant**, **cafe**, **school**, or **other**.

The classification rules are:
- A business is a **restaurant** if the word 'restaurant' appears in its name, including variants like 'restaurante', 'restauranté', etc.
- A business is a **cafe** if the name contains 'cafe', 'café', or 'coffee'.
- A business is a **school** if the name contains the word 'school'.
- All other businesses fall into the **other** category.

Additionally, ensure:
- Each business name appears only once in the output, removing any duplicates.
- The output contains only two fields: the **business name** and its corresponding **business type**.

You will work with the `sf_restaurant_health_violations` table, which contains various details about San Francisco businesses and their health inspections.
