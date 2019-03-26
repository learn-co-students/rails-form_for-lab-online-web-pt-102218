class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(params.require(:students).permit(:first_name, :last_name))
  end

  def new
    @student = Student.new
  end

  def create
    #rails server to check if it creates a new student. need to strong params it?
    @student = Student.create(params.require())

  end

  def edit
  end

  def update
  end

end
