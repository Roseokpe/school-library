class Rental
    attr_accessor :data, :person, :book
    def initialize(date, person, book)
        @date = date 
        @person = person
        @person.rental.push(self)
        @book = book
        @book.rental.push(self)
        
    end
end