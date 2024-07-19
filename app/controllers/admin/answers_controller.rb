class Admin::AnswersController < AuthenticatedController

  before_action :set_answer, only: %i[show edit update destroy]
  before_action :question_find, only: %i[create new]
  before_action :set_question, only: %i[destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_answer_not_found

  def show

  end

  def new
    @answer = @question.answers.new
  end

  def edit

  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      redirect_to @answer.question
    else
      render :new
    end
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer.question
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to admin_question_path(@question)
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:body, :correct)
    end

    def question_find
      @question = Question.find(params[:question_id])
    end

    def set_question
      @question = @answer.question
    end

    def rescue_with_answer_not_found
      render plain: 'Sorry, answer was not found'
    end
end
