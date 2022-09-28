class Teacher < Person
    def initialize 
        @specialization
    end

    def can_use_services?
        p true        
    end
end