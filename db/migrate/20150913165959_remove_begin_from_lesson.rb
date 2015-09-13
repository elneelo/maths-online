class RemoveBeginFromLesson < ActiveRecord::Migration
  def change
    remove_column :lessons, :begin, :DateTime
  end
end
