class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(params.require(:student).permit(:id))
  end

  def new
    @student = Student.new
  end

  def create
    #rails server to check if it creates a new student. need to strong params it?
    binding.pry
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
  end

end
