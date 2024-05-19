-- Perform INNER JOIN operation on two tables
SELECT books.title, books.year_published, authors.first_name, authors.last_name
FROM books
INNER JOIN authors ON books.author_id = authors.author_id;