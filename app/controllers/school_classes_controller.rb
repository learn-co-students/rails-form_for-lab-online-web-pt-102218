class SchoolClassesController < ApplicationController
    def new
        @school_class=SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(title:params[:title],room_number:params[:room_number])
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class=SchoolClass.find(params[:id])
    end

    def edit
    end

    def update
    end
end