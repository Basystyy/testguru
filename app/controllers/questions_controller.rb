class QuestionsController < ApplicationController

  before_action :find_test

  def index
    result = Question.where(test_id: params[:test_id]).pluck(:test_id, :body).map do |list|
      list.join(' > ')
    end.join("\n")
    render plain: result
  end

  def show
    render plain: Question.find(params[:id]).body
  end

  def new
    
  end

  def create
    # byebug
    quest = Question.new(quest_params)
    quest.test = @test
    quest.save
    render plain: quest.inspect
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def quest_params
    params.require(:question).permit(:body)
  end
end
