import sqlite3
import pandas as pd
import pathlib

# Define the database file in the current root project directory
db_file = pathlib.Path("project.db")

def insert_data_from_csv():
    """Function to use pandas to read data from CSV files (in 'data' folder)
    and insert the records into their respective tables."""
    try:
        author_data_path = pathlib.Path("data", "authors.csv")
        book_data_path = pathlib.Path("data", "books.csv")
        authors_df = pd.read_csv(author_data_path)
        books_df = pd.read_csv(book_data_path)
        with sqlite3.connect(db_file) as conn:
            # Use the pandas DataFrame to_sql() method to insert data
            # Pass in the table name and the connection
            authors_df.to_sql("authors", conn, if_exists="replace", index=False)
            books_df.to_sql("books", conn, if_exists="replace", index=False)
            print("Data inserted successfully.")
    except (sqlite3.Error, pd.errors.EmptyDataError, FileNotFoundError) as e:
        print("Error inserting data from CSV:", e)

def insert_data_from_sql():
    """Function to read and execute SQL statements to insert data"""
    try:
        with sqlite3.connect(db_file) as conn:
            sql_file = pathlib.Path("insert_data.sql")
            with open(sql_file, "r") as file:
                sql_script = file.read()
            conn.executescript(sql_script)
            print("Data inserted successfully.")
    except sqlite3.Error as e:
        print("Error inserting data from SQL:", e)

def main():
    insert_data_from_sql()
    insert_data_from_csv()

if __name__ == "__main__":
    main()