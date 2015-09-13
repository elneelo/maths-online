class RemoveFinishFromLesson < ActiveRecord::Migration
  def change
    remove_column :lessons, :finish, :DateTime
  end
end
