class ChangeTestIdToAdminFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :test_id, :indeger
    add_column :users, :admin, :boolean, default: false
  end
end
