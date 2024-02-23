class QuestionsController < ApplicationController
  def index
    result = Question.where(test_id: params[:test_id]).pluck(:test_id, :body).map do |list|
      list.join(' > ')
    end.join("\n")
    render plain: result
  end

  def show
    render plain: Question.find(params[:id]).body
  end
end
