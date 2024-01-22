class AddNullConstraintsToAnswers < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:answers, :body, false)
    change_column_null(:answers, :correct, false)
    change_column_null(:answers, :questions_id, false)
  end
end
