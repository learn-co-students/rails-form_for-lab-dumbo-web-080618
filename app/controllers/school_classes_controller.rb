class SchoolClassesController < ApplicationController


  def show
    @class = SchoolClass.find(params[:id])

  end

  def new
  end

  def edit

  end



  def create
    @class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  private

  def school_class_params(*args)
    params.permit(*args)
  end

end
