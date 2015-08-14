class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.datetime :begin
      t.datetime :finish
      t.integer :price

      t.timestamps null: false
    end
  end
end
