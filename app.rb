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

    # show list all the books
  def list_all_books
    if @books_list.empty?
      puts 'There are no books in the library'
    else
      @books_list.each_with_index { |book, i| puts "#{i}) Title: '#{book.title}', Author: #{book.author}" }
    end
  end