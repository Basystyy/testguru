class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference(:users, :test, foreign_key: true)
  end
end