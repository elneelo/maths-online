class AddClassroomNameToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :classroom_name, :string
  end
end
