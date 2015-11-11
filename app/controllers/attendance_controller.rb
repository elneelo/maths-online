class AttendanceController < ApplicationController

  def index
    @attendance = Attendance.paginate(page: params[:page])
    @lesson_ids = Attendance.uniq.pluck(:lesson_id)
    @lessons = Lesson.where(id: @lesson_ids)
  end

  def show
    @attendances = Attendance.where(lesson_id: params[:lesson_id])
    @users = User.where(id: @attendance.user_id)
  end

  def get_users_attending
    @lesson_id = params[:lesson_id]
    @attendances = Attendance.where(lesson_id: @lesson_id)
    @users = User.where(id: @attendances.pluck(:user_id))
    @lesson = Lesson.find(@lesson_id)
  end
end
