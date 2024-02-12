class Answer < ApplicationRecord

  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true
  validate :answers_qty

  private

  def answers_qty
    qty = Answer.where(question_id: self.question_id).count
    errors.add(:question_id, 'Dont valid count of answers') if qty >= 4
  end

end
