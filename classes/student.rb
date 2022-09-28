# require "./person.rb"
class Student < person
  def initialize(age, classroom, name = 'unknown', parent_permission = true)
    super (name, age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
