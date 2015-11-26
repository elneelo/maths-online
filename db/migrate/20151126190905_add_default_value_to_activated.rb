class AddDefaultValueToActivated < ActiveRecord::Migration
  def change
  	change_column :users, :activated, :boolean, :default => true
  end
end
