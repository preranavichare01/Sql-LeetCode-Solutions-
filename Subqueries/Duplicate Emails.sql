SELECT DISTINCT p1.email AS Email
FROM person p1
WHERE (
    SELECT COUNT(*) 
    FROM person p2 
    WHERE p2.email = p1.email
) > 1;
