module TestPassagesHelper

  def header_text
    if @test_passage.test_successfully?
      "#{message} #{t('.right_result')}"
    else
      "#{message} #{t('.wrong_result')}"
    end
  end
    
  def test_passage_header
    if @test_passage.test_successfully?
      content_tag(:h2, header_text, class: "right")
    else
      content_tag(:h2, header_text, class: "wrong")
    end
  end

  def message
    t('.message', your_result: @test_passage.correct_questions, max_result: @test_passage.test.questions.count)
  end

  def current_number
    @test_passage.test.questions.index(@test_passage.current_question) + 1
  end

  def questions_count
    @test_passage.test.questions.count
  end

end