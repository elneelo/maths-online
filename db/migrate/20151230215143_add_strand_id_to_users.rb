class AddStrandIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :strand_id, :integer
  end
end
