class ChangeUerJoinTable < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :name, true
    change_column_null :users, :gender, true
  end
end
