class AddLessonIdToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :lesson_id, :int
  end
end
