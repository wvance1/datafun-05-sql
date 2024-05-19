-- Query to filter book data based on year published before 1900
SELECT 
    *
FROM 
    books
WHERE 
    year_published < 1900;