class TestsController < AuthenticatedController
  
  skip_before_action :authenticate_user!, only: :index
  before_action :test_find, only: %i[start]
  
  def index
    @tests = Test.all
  end

  def start
    current_user.tests.push(@test)
    redirect_to current_user.test_passage(@test)
  end

private

  def test_find
    @test = Test.find(params[:id])
  end

end