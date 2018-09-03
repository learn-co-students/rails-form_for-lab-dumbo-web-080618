class StudentsController <ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
    set_student
  end

  def show
    set_student
  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def update
    set_student
    @student.update(params[:student])
    @student.save
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end
