class Teacher < Person
  def initialize(age, specialization, name = 'unknown')
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
