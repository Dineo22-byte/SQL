This repository contains SQL scripts designed to manage a simple bookstore database. The database comprises two primary tables: Authors and Books. These tables are used to store information about various authors and their corresponding books. The database also includes several queries that allow you to retrieve specific data, such as the number of books written by each author or the total number of books according to nationality.

Database Structure
1. Authors Table
The Authors table holds the details of all the authors whose books are included in the database. Each author is uniquely identified by an a_id, which is an automatically incremented integer. Along with this ID, the table stores the first name, last name, and nationality of each author.

a_id: A unique identifier for each author. This is the primary key for the table.
first_Name: The first name of the author.
last_Name: The last name of the author.
nationality: The nationality of the author, which can be used to categorize books by the country of origin.
2. Books Table
The Books table stores information about the books available in the database. Each book is uniquely identified by a b_id, which is also an automatically incremented integer. The table includes the title of the book, a reference to the author (via the author_id), and a brief description of the book's content.

b_id: A unique identifier for each book. This is the primary key for the table.
title: The title of the book.
author_id: A foreign key that references the a_id in the Authors table, linking each book to its respective author.
description: A short description that provides an overview of the book’s theme or storyline.
Data Insertion
Authors
The repository includes sample data for the Authors table. For instance, authors like Mark Twain and Steve Harvey are included, with their respective nationalities. This data allows users to see how the table is populated with different authors from various backgrounds.

Books
Similarly, the Books table is populated with sample data that includes titles like "Being Mary Jane" and "Think Like a Man and Act Like a Lady." Each book entry is linked to an author via the author_id, ensuring that the relationships between books and their authors are maintained.

Example Queries
1. Counting the Total Number of Books
One of the queries included in this repository calculates the total number of books stored in the database. This is useful for quickly determining the size of the book collection.

2. Counting Books by Each Author
Another query counts how many books each author has written. This query can be helpful for identifying the most prolific authors in the database. The results are ordered by the number of books, with the option to limit the results to show only the top authors.

3. Counting Books by Nationality
A third query focuses on the nationality of the authors, allowing users to see how many books are written by authors from different countries. This can be particularly useful for understanding the diversity of the book collection.

Conclusion
This repository serves as a basic framework for managing a bookstore database. It provides the essential tables and sample data needed to get started, along with useful queries to retrieve and analyze the stored data. Whether you're looking to track book counts, analyze author contributions, or explore the diversity of your collection, this database offers a solid foundation for managing a literary inventory.


