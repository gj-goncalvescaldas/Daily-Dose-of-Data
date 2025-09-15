SELECT 
    n,
    CASE 
        WHEN bst.p is NULL then 'Root'
        WHEN bst.n not in (SELECT DISTINCT P FROM BST WHERE p is not null) THEN 'Leaf'
        ELSE 'Inner'
    END

FROM BST bst 

ORDER BY bst.n 
