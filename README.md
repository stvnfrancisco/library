Library Database setup instructions:

psql:

guest=# CREATE DATABASE library;
<br>
guest=# CREATE TABLE books (id serial PRIMARY KEY, name varchar);
<br>
guest=# CREATE TABLE authors (id serial PRIMARY KEY, name varchar);
<br>
guest=# CREATE TABLE books_authors (book_id int, author_id int, serial PRIMARY KEY);
<br>
guest=# CREATE DATABASE library_test WITH TEMPLATE library;
<br>
guest=# \c library_test
<br>
library_test=#
