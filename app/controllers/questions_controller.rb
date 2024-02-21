class QuestionsController < ApplicationController
  def index
    render plain: 'All questions'
  end
end
