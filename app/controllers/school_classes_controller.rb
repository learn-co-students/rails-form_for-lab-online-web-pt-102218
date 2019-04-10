class SchoolClassesController < ApplicationController 

    def show 
        #binding.pry
        @school_class = SchoolClass.find(params[:id])
    end

    def new 
        @school_class = SchoolClass.new
    end

    def create 
        #binding.pry
        @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        
        redirect_to school_class_path(@school_class)
    end

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

end