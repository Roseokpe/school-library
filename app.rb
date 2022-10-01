

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