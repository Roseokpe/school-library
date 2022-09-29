class Classroom
  attr_accessor :label
  attr_reader :student

  def initialize(label)
    @label = label
    @student = []
  end

  def add_student(student)
    @student.push(student) # to add student to a classroom
    # to check if the student is not already belong to a classroom  # to set
    student.classroom = self unless student.classroom == self
  end
end
