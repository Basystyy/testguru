module TestPassagesHelper

  def test_passage_header(test_passage)
    if test_passage.test_completed?
      "Congratulations, test was completed!"
    else
      "Better get ready, test was failed."
    end
  end

end
