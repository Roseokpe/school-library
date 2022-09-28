class Person
    attr_accessor :@name, :@age, :@id
    def initialize(name = "unknown", age, parent_permission = true)
        @id = Random rand(1..1000)
        @name = name
        @age = age
    end

    def can_use_services?
        if @is_of_age? || @parent_permission
            p true 
        else 
            p false
        end   
    end

    def is_of_age?
        if @age >= 18
            p true
        else 
            p false
        end
    end
    private :is_of_age?
end
