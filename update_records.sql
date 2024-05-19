-- Update records in the authors table when first name contains 'a'
UPDATE authors
SET first_name = 'Westley', last_name = 'Vance'
WHERE first_name = 'F. Scott';
