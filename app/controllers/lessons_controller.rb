class LessonsController < ApplicationController

  def index
    @lessons = Lesson.paginate(page: params[:page])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:success] = "Your lesson has been created"
      redirect_to @lesson
    else
      render 'new'
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update_attributes(lesson_params)
      flash[:success] = "Lesson updated"
      redirect_to @lesson
    else
      render 'edit'
    end
  end

  def destroy
    Lesson.find(params[:id]).destroy
    flash[:success] = "Lesson deleted"
    redirect_to lessons_url
  end

  def record_attendance
    @lesson = Lesson.find(params[:id])
    @attendance = Attendance.new
    @attendance.user_id = current_user.id
    @attendance.lesson_id = @lesson.id
    @attendance.save
    redirect_to(root_url)
  end

  private

    def lesson_params
      params.require(:lesson).permit(:title, :price,
        :date, :start_time, :end_time)
    end

    # Before filters

    # Confirms the correct lesson.
    def correct_lesson
      @lesson = Lesson.find(params[:id])
      redirect_to(root_url) unless current_lesson?(@lesson)
    end
end
