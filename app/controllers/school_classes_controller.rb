class SchoolClassesController < ApplicationController
    
    def index 
        @schoolClasses = SchoolClass.all
    end 
    
    def show
        @schoolClass = SchoolClass.find(params[:id])
    end 

    def new

    end 

    def create
        @schoolClass = SchoolClass.create(title: params[:school_class_title], room_number: params[:school_class_room_number])
        redirect_to school_class_path(@schoolClass)
    end

    def update
        @schoolClass = SchoolClass.find(params[:id])
        @schoolClass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@schoolClass)
    end 

    def edit
        @schoolClass = SchoolClass.find(params[:id])
    end 
end 