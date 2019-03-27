class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def create
    #rails server to check if it creates a new student. need to strong params it?
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student.find_by(params[:id])
  end

  def update
    @student = Student.find_by(params[:id])
    @student.require(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private 

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
