module TestPassagesHelper

  def test_passage_header
    if @test_passage.test_completed?
      content_tag(:h2, "#{message}. Congratulations, test was completed!", class: "right")
    else
      content_tag(:h2, "#{message}. Better get ready, test was failed.", class: "wrong")
    end
  end

  def message
    "Your result: #{@test_passage.correct_questions} from #{@test_passage.test.questions.count}"
  end

end