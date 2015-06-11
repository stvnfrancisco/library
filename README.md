Library Database setup instructions:

psql:

guest=# CREATE DATABASE library;
guest=# CREATE TABLE books (id serial PRIMARY KEY, name varchar);
guest=# CREATE TABLE authors (id serial PRIMARY KEY, name varchar);
guest=# CREATE TABLE books_authors (book_id int, author_id int, serial PRIMARY KEY);
guest=# CREATE DATABASE library_test WITH TEMPLATE library;
guest=# \c library_test
library_test=# 
