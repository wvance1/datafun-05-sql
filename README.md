# datafun-05-sql

## creating project and cloning to machine

##### I creatred a new repository on GitHub. 
##### I made sure that the README.md was checked so that I could write this little note!
##### I then went to a folder on my computer, where I wanted to file to live, and I opened the terminal for that file.
##### I then cloned the repository to that folder using the following command:
```shell

git clone site_URL

```

## Adding files 

##### I then added a .py file to work in, requirements.txt to hold the required project modules, a .vinv to act as the virtual environment(instructions for that are below), and a .gitignore to hold the .venv and the .vsode file so that the virtual environment is not passed to the rest of the python environment.

## Create Project Virtual Environment

##### On Windows, create a project virtual environment in the .venv folder. 

```shell
#creates .venv file then activates it
py -m venv .venv
.venv\Scripts\Activate

```

## Install all required packages into local project virtual environment

##### This installs the required packages that are held in the requirements.txt file - requests 

```shell

#installs all files in requirements.txt
py -m pip install -r requirements.txt
#creates requirements.txt file and outputs the installed packages
py -m pip freeze > requirements.txt
```

## add docstring to .py file

##### Added a note to the top of the file bound by '''note'''

## Git add and commit 

##### Periodically, I will add, commit and push the file to the web. 

```shell
git add .
git commit -m "add .gitignore, cmds to readme"
git push origin main
```
## Add data folder and .csv

##### Manually added a data folder to the project folder, then added two .csv files in VS Code.

## created the db_initialize_westley.py file

##### When executed, this file creates the project.db file, and runs a script that calls the create_tables.sql to fill the database with columns of appropriate names for each data set.

## created the db_operations_westley.py file

##### This file when run, will call all of the associated .sql files after initilaization to perform manipulations on the database.

## created create_tables.sql

##### created a .sql file to fill tables of the database that was created in the previous operation.
```shell
CREATE TABLE authors (
    author_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);
CREATE TABLE books (
    book_id TEXT PRIMARY KEY,
    title TEXT,
    year_published INTEGER,
    author_id TEXT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
```

## created book_manager.py

##### Followed instructions from canvas. again, this was to create a database and fill with info from CSV files.

## Created insert_data.sql file

##### This file when called added the held files to the database in their respective categories.

```shell
INSERT INTO authors (author_id, first_name, last_name) VALUES

INSERT INTO books (book_id, title, year_published, author_id) VALUES

```
## Created update_records.sql file

##### This file replaced any entry in the authors file that had the first name F. Scott with my name. Therefore making me superior to the other guy.

```shell
UPDATE authors
SET first_name = 'Westley', last_name = 'Vance'
WHERE first_name = 'F. Scott';
```

## Created delete_records.sql file

##### This file deleted the entry in authors containing the last name 'Dickens'. We cant have those inappropriate names in out database.

```shell
DELETE FROM authors
WHERE last_name = 'Dickens';
```

## Created query_aggregation.sql file

##### This looked at the books table for the database and provides data on the number of entries, the average year published, and the average character length of the titles. Formatting is performed in db_operations_westley.py when the file is called.

```shell
SELECT
    COUNT(*) AS total_books,
    AVG(year_published) AS avg_year_published,
    AVG(LENGTH(title)) AS avg_title_length
FROM
    books;
```

## Created query_filter.sql file

##### This looked at the books table for the database and provides data on books that were published before 1900.

```shell
SELECT 
    *
FROM 
    books
WHERE 
    year_published < 1900;
```

## Created query_sorting.sql file

##### This looked at the books table for the database and sorts the books based on publication date. When called the information is formated to display the year and title.

```shell
SELECT 
    year_published,
    title
FROM 
    books
ORDER BY 
    year_published ASC;
```

## Created query_group_by.sql file

##### This looked at the books table for the database and groups the books based on the lenght of their titles. We have short (title < 10), medium (10 <= title< 20), and long (title >=20).  

```shell
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
```

## Created query_join.sql file

##### This looked at the books and author table and checked for cells that matched. I used the Inner join which looks for matches between both tables. The data was formated in the calling function when returned. I did have to fudge the original data to make this work. 

```shell
SELECT books.title, books.year_published, authors.first_name, authors.last_name
FROM books
INNER JOIN authors ON books.author_id = authors.author_id;
```
## Overall process

##### A LOT of this was completed with the help and support of my local AI ChatGPT. This would have taken a month for me to complete without it.
##### After the .sql files were created, functions were made in the db_operations_westley.py file. This is where we called the .sql files to execute and manipulated the outputs.

## Source
##### This project was built to the following specification:
- [datafun-05-spec](https://github.com/denisecase/datafun-05-spec)