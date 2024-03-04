class QuestionsController < ApplicationController

  before_action :find_test, only: %i[create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = Question.where(test_id: params[:test_id])
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

  def rescue_with_question_not_found
    render plain: 'Sorry, question was not found'
  end
end
