Title: Library

by: Steven Francisco

This app will allow the user to add books and authors to a database, add books to each author, and add authors to the books.

Built using Ruby ver.: ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-darwin14]

Please Bundle install the following Gems: 'sinatra' 'sinatra-contrib' 'rspec' 'capybara' 'pry'

MIT License: Copyright (c) 2015

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Library Database setup instructions:

Start the postgres server and open another tab to run psql:

guest=# CREATE DATABASE library;
<br>
guest=# CREATE TABLE books (id serial PRIMARY KEY, name varchar);
<br>
guest=# CREATE TABLE authors (id serial PRIMARY KEY, name varchar);
<br>
guest=# CREATE TABLE books_authors (id serial PRIMARY KEY, book_id int, author_id int,);
<br>
guest=# CREATE DATABASE library_test WITH TEMPLATE library;
<br>
guest=# \c library_test
<br>
library_test=#
