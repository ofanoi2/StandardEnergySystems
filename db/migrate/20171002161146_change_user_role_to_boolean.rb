class ChangeUserRoleToBoolean < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :user_role, :boolean, using user_role: :boolean, default: false
  end
end
