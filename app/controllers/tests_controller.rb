class TestsController < ApplicationController
  def index
    result = Test.pluck(:title, :level).map do |list|
      list.join(' > ')
    end.join("\n")
    render plain: list
  end

  def show
    test = Test.find(params[:id])
    render plain: Question.where(test: test).pluck(:body).join("\n")
  end
end
