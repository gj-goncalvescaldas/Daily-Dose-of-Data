SELECT c.name as Customers
FROM Customers c
LEFT JOIN Orders o ON o.customerId = c.id
Where o.id IS NULL;