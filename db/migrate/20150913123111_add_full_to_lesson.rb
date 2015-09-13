class AddFullToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :full, :boolean
  end
end
