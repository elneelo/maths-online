class AddLessonIdToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :lesson_id, :integer
  end
end
