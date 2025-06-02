SELECT 
    first_name,
    target

FROM salesforce_employees

WHERE manager_id = 13 and target = (
                                SELECT max(target)
                                FROM salesforce_employees
                                WHERE manager_id=13
                                    )