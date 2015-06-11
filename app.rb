require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/author")
require("./lib/book")
require("pg")

DB = PG.connect({:dbname => "library"})

get("/") do
  @authors = Author.all()
  @books = Book.all()
  erb(:index)
end

get("/authors") do
  @authors = Author.all()
  erb(:authors)
end

get("/books") do
  @books = Book.all()
  erb(:books)
end

post("/authors") do
  name = params.fetch("name")
  author = Actor.new({:name => name, :id => nil})
  author.save()
  @authors = Author.all()
  erb(:authors)
end

post("/books") do
  name = params.fetch("name")
  book = Book.new({:name => name, :id => nil})
  book.save()
  @books = Book.all()
  erb(:books)
end

get("/authors/:id") do
  @author = Author.find(params.fetch("id").to_i())
  @books = Book.all()
  erb(:author_info)
end

get("/books/:id") do
  @book = Book.find(params.fetch("id").to_i())
  @authors = Author.all()
  erb(:book_info)
end
