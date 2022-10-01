require './classes/person.rb'
require './classes/book.rb'
require './classes/rental.rb'
require './classes/student.rb'
require './classes/teacher.rb'
require './classes/classroom.rb'

class App
    attr_accessor :books_list, :people
  
    def initialize
      @books_list = []
      @people = []
      @rentals = []
      @students = []
      @teachers = []
    end
  
    def run
      display_list
    end