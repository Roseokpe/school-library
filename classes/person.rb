class Person
    def initialize(name = "unknown", age, parent_permission = true)
        @id = Random rand(1..1000)
        @name = name
        @age = age
    end
    #setter
    def name = (name)
        @name    
    end

    def age = (age)
        @age    
    end

    #getter 
    def name
        @name
    end
    def id
        @id  
    end
    def age
        @age
        
    end

    def is_of_age?
        if @age >= 18
            p true
        else 
            p false
        end
    end

    def can_use_services?
        if @is_of_age? == true
            p true 
        else 
            p false
        end   
    end
    private :is_of_age?
end


