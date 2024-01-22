class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body
      t.boolean :correct
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
