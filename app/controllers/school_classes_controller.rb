require 'pry'

class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def new
    @class = SchoolClass.new
  end

  def show
    @class = SchoolClass.find_by(params[:id])
  end

  def create
    @class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  def edit
    @class = SchoolClass.find_by(params[:id])
  end

  def update
    @class = SchoolClass.find_by(params[:id])
    @class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
