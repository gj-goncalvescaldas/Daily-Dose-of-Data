-- sql version 8.0.33

WITH order_projects as (
    SELECT *
    FROM projects 
    ORDER BY End_Date
),

projects_blocks AS (
    SELECT
        task_ID,
        start_date,
        End_Date,
        CASE
            WHEN LAG(End_Date) OVER (ORDER BY End_Date) IS NULL
                THEN 1
            WHEN end_date = DATE_ADD(LAG(End_Date) OVER (ORDER BY End_Date), INTERVAL 1 DAY) 
                THEN 0
            ELSE 1
        END as blocks
    
    FROM order_projects
),

projects_id AS (
    SELECT
        task_ID,
        start_date,
        end_date,
        blocks,
        SUM(blocks) OVER (ORDER BY End_Date) as project_id          
    
    FROM projects_blocks
)

SELECT
    MIN(start_date) as start_date_project,
    MAX(end_date) as end_date_project

FROM projects_id

GROUP BY project_id

ORDER BY DATEDIFF(end_date_project, start_date_project), MIN(start_date)