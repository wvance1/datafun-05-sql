-- Query to sort books by publication date (oldest to newest)
SELECT 
    year_published,
    title
FROM 
    books
ORDER BY 
    year_published ASC;