class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(first_name:params[:first_name],last_name:params[:last_name])
        @student.save
        redirect_to students_path(@student)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
    end

    def update
    end
end