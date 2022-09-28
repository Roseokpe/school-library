class Person
  attr_accessor :name, :age, :id, :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else
      false
    end
  end

  def of_age?
    if @age >= 18
      p true
    else
      p false
    end
  end
  private :of_age?
end
