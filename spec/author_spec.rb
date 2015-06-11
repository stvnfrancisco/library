require("spec_helper")

describe(Author) do

  describe("#initialize") do
    it("is initialized with a name") do
      author = Author.new({:name => "Jack Kerouac", :id => nil})
      expect(author).to(be_an_instance_of(Author))
    end

    it("can be initialized with its database ID") do
      author = Author.new({:name => "Jack Kerouac", :id => nil})
      expect(author).to(be_an_instance_of(Author))
    end
  end

  describe(".all") do
    it("starts off with no books") do
      expect(Author.all()).to(eq([]))
    end
  end
end

  describe(".find") do
    it("returns a author by its ID number") do
      test_author = Author.new({:name => "Jack Kerouac", :id => nil})
      test_author.save()
      test_author2 = Author.new({:name => "Charles Bukowski", :id => nil})
      test_author2.save()
      expect(Author.find(test_author2.id())).to(eq(test_author2))
    end
  end

  describe("#save") do
    it('saves an author to the array') do
      test_author = Author.new({:name => "Jack Kerouac", :id => nil})
      test_author.save()
      expect(Author.all()).to(eq([test_author]))
    end

    describe("#==") do
      it("is the same if it has the same name and id") do
        author = Author.new({:name => "Charles Bukowski", :id => nil})
        author2 = Author.new({:name => "Charles Bukowski", :id => nil})
        expect(author).to(eq(author2))
      end
    end

    describe("#update") do
      it("lets you update authors in the database") do
        author = Author.new({:name => "Charles Bukowski", :id => nil})
        author.save()
        author.update({:name => "Jack Kerouac"})
        expect(author.name()).to(eq("Jack Kerouac"))
      end
      it("lets you add a book to an author") do
        book = Book.new(({:name => "1984", :id => nil}))
        book.save()
        author = Author.new({:name => "Charles Bukowski", :id => nil})
        author.save()
        author.update({:book_ids =>[book.id()]})
        expect(author.books()).to(eq([book]))
      end
    end

    describe("#books") do
      it("returns all of the books a particular author has written") do
        book = Book.new(:name => "1984", :id => nil)
        book.save()
        book2 = Book.new(:name => "Born To Run", :id => nil)
        book2.save()
        author = Author.new(:name => "Charles Bukowski", :id => nil)
        author.save()
        author.update(:book_ids => [book.id()])
        author.update(:book_ids => [book2.id()])
        expect(author.books()).to(eq([book, book2]))
      end
    end

    describe("#delete") do
      it("lets you delete an author from the database") do
        author = Author.new({:name => "Jack Kerouac", :id => nil})
        author.save()
        author2 = Author.new({:name => "Charles Bukowski", :id => nil})
        author2.save()
        author.delete()
        expect(Author.all()).to(eq([author2]))
      end
    end
  end
