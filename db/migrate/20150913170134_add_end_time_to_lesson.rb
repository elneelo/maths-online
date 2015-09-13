class AddEndTimeToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :end_time, :string
  end
end
