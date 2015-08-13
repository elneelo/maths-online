class RemoveColumncFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :columnc, :string
  end
end
