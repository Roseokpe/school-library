require_relative 'nameable'
require_relative 'base_decor'

class Person < Nameable
  attr_accessor :name, :age, :id, :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
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

  def correct_name
    @name
  end
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name
