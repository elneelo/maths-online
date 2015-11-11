class AddUserIdToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :user_id, :int
  end
end
