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
end
