# Write your MySQL query statement below
SELECT p.firstName, p.lastName, ad.city, ad.state
FROM Address ad
RIGHT JOIN Person p on p.personId = ad.personId