class ChangeTestIdToAdminFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :test_id, :indeger
    add_column :users, :admin, :boolean, default: false
    add_reference :tests, :author, foreign_key: {to_table: :users}
  end
end
