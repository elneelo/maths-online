class AddDateToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :date, :string
  end
end
