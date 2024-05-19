-- Query to group books by the length of their titles
SELECT 
    CASE 
        WHEN LENGTH(title) < 10 THEN 'Short (<10 characters)'
        WHEN LENGTH(title) >= 10 AND LENGTH(title) < 20 THEN 'Medium (10-19 characters)'
        ELSE 'Long (>=20 characters)'
    END AS title_length_group,
    COUNT(*) AS num_books
FROM 
    books
GROUP BY 
    title_length_group;