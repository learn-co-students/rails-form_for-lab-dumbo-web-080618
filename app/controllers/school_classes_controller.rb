class SchoolClassesController < ApplicationController

  def index
    @sclass = SchoolClass.all
  end

  def new
    @sclass = SchoolClass.new
  end

  def edit
    set_sclass
  end

  def show
    set_sclass
  end

  def create
    @sclass = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@sclass)
  end

  def update
    set_sclass
    @sclass.update(params[:school_class])
    @sclass.save
    redirect_to school_class_path(@sclass)
  end

  private

  def set_sclass
    @sclass = SchoolClass.find(params[:id])
  end


end
