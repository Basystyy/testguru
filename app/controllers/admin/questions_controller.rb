class Admin::QuestionsController < AuthenticatedController
  
  before_action :question_find, only: %i[edit update destroy show]
  before_action :test_find, only: %i[index create new]
  before_action :set_test, only: %i[edit destroy]
  

  # rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = Question.where(test_id: params[:test_id])
  end

  def show

  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.test = @test

    if @question.save
      redirect_to admin_test_path(@test)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @question.update(question_params)
      redirect_to admin_question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to admin_test_path(@test)
  end

  private

  def test_find
    @test = Test.find(params[:test_id])
  end

  def question_find
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def set_test
    @test = @question.test
  end

  def rescue_with_question_not_found
    render plain: 'Sorry, question was not found'
  end
end
