class TestsMailer < ApplicationMailer

  helper :test_passages

  def completed_test(test_passage)
    @user = test_passage.user
    @test = test_passage.test
    @test_passage = test_passage

    mail to: @test_passage.user.email
  end

end
