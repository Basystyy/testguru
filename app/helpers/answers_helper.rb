module AnswersHelper

  def answer_header(question)
    if @answer.persisted?
      "Edit #{question.body} Answer"
    else
      "Create New #{question.body} Answer"
    end
  end

end
