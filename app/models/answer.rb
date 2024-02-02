class Answer < ApplicationRecord

  belongs_to :question

  scope :answer_true, -> { where(correct: true) }

end
