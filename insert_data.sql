
-- inserts the following data into the authors data set 
INSERT INTO authors (author_id, first_name, last_name) VALUES
('10f88232-1ae7-4d88-a6a2-dfcebb22a596', 'Herper', 'Lee'),
('c3a47e85-2a6b-4196-a7a8-8b55d8fc1f70', 'George', 'Orvill'),
('e0b75863-866d-4db4-85c7-df9bb8ee6dab', 'F. Scott', 'Fizz'),
('7b144e32-7ff4-4b58-8eb0-e63d3c9f9b8d', 'Aldous', 'CoolGuy');

-- inserts the following data into the books data set 
INSERT INTO books (book_id, title, year_published, author_id) VALUES
('d6f83870-ff21-4a5d-90ab-26a49ab6ed12', 'To Kill a bird', 1955, 'f88232-1ae7-4d88-a6a2-dfcebb22a596'),
('0f5f44f7-44d8-4f49-b8c4-c64d847587d3', '1987', 1952, 'a47e85-2a6b-4196-a7a8-8b55d8fc1f70'),
('f9d9e7de-c44d-4d1d-b3ab-59343bf32bc2', 'The Great Gratsby', 1927, 'b75863-866d-4db4-85c7-df9bb8ee6dab'),
('38e530f1-228f-4d6e-a587-2ed4d6c44e9c', 'Brave old World', 1936, '144e32-7ff4-4b58-8eb0-e63d3c9f9b8d');