module QuestionsHelper

  def question_header(test)
    if @question.test == nil
      "Create New #{test.title} Question"
    else
      "Edit #{test.title} Question"
    end
  end

end
