require('spec_helper')

describe(Book) do

  describe(".all") do
    it("starts off with no books") do
      expect(Book.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a book by its id number") do
      test_book = Book.new({:name => "Born To Run", :id => nil})
      test_book.save()
      test_book2 = Book.new({:name => "1984", :id => nil})
      test_book2.save()
      expect(Book.find(test_book2.id())).to(eq(test_book2))
    end
  end

  describe("#save") do
    it('saves a book to the array') do
      test_book = Book.new({:name => "Born To Run", :id => nil})
      test_book.save()
      expect(Book.all()).to(eq([test_book]))
    end
  end

  describe("#==") do
    it("is the same if it has the same name and id") do
      book = Book.new({:name => "Born To Run", :id => nil})
      book2 = Book.new({:name => "Born To Run", :id => nil})
      expect(book).to(eq(book2))
    end
  end

  describe("#update") do
    it("lets you update books in the database") do
      book = Book.new({:name => "Born To Run", :id => nil})
      book.save()
      book.update({:name => "Born To Run"})
      expect(book.name()).to(eq("Born To Run"))
    end
  end

  describe("#delete") do
    it("lets you delete a book from the database") do
      book = Book.new({:name => "Born To Run", :id => nil})
      book.save()
      book2 = Book.new({:name => "1984", :id => nil})
      book2.save()
      book.delete()
      expect(Book.all()).to(eq([book2]))
    end
  end
end
