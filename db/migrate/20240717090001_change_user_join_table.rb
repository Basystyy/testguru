class ChangeUserJoinTable < ActiveRecord::Migration[6.1]

  def up
    change_column_null :users, :name, true
    change_column_null :users, :gender, true
    change_column_null :users, :admin, true
    execute "UPDATE users SET admin = NULL"
    rename_column :users, :admin, :type
    change_column :users, :type, :string
    change_column_default :users, :type, 'User'
    User.reset_column_information
    User.where(email: 'd@b.com').update_all(type: 'Admin')
    User.where(type: nil).update_all(type: 'User')
    change_column_null :users, :type, false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_index :users, :type
  end

  def down
    change_column_null :users, :type, true
    execute "UPDATE users SET type = NULL"
    rename_column :users, :type, :admin 
    change_column :users, :admin, :boolean
    change_column_default :users, :admin, false
    User.reset_column_information
    User.where(email: 'd@b.com').update_all(admin: true)
    User.where(admin: nil).update_all(admin: false)
    change_column_null :users, :admin, false
    change_column_null :users, :name, false
    change_column_null :users, :gender, false
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_index :users, :type
  end

end
