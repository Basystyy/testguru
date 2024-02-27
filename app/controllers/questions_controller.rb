class QuestionsController < ApplicationController

  before_action :find_test, only: %i[create]

  def index
    result = Question.where(test_id: params[:test_id]).pluck(:id, :body, :test_id).map do |list|
      list.join(' > ')
    end.join("\n")
    render plain: result
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    
  end

  def create
    quest = Question.new(quest_params)
    quest.test = @test
    quest.save
    render plain: quest.inspect
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
  end

  def delete
    question = Question.find(params[:id])
    question.destroy
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def quest_params
    params.require(:question).permit(:body)
  end
end
