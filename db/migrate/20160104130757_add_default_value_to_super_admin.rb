class AddDefaultValueToSuperAdmin < ActiveRecord::Migration
  def change
  	change_column_default :users, :super_admin, false
  end
end
