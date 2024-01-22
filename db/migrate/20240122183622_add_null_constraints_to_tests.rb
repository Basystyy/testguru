class AddNullConstraintsToTests < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:tests, :title, false)
    change_column_null(:tests, :level, false)
    change_column_null(:category_id, :title, false)
  end
end
