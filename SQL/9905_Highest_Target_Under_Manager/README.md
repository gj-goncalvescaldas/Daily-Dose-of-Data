# 9905_Highest_Target_Under_Manager

Identify the employee(s) working under the manager with `manager_id = 13` who have achieved the **highest target**. You need to return the **first name** of each such employee along with their **target** value. The purpose is to display the **maximum target** among all employees under this specific manager and determine who achieved it.

## Table: salesforce_employees

| Column Name      | Data Type |
|------------------|-----------|
| id               | bigint    |
| first_name       | text      |
| last_name        | text      |
| age              | bigint    |
| sex              | text      |
| employee_title   | text      |
| department       | text      |
| salary           | bigint    |
| target           | bigint    |
| bonus            | bigint    |
| email            | text      |
| city             | text      |
| address          | text      |
| manager_id       | bigint    |
