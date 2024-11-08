class TestPassagesController < AuthenticatedController

  before_action :set_test_passage, only: %i[show update result gist]

  def show

  end

  def result

  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      TestsMailer.completed_test(@test_passage).deliver_later
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  def gist
    @result = GistQuestionService.new(@test_passage.current_question).call
    new_gist
    flash_options = if @result[:id].present?
                      { notice: "#{t('.success')} #{view_context.link_to("#{@result.html_url.to_s}", @result.html_url, target: '_blank')}" }
                    else
                      { alert: t('.failure')}
                    end
    redirect_to @test_passage, flash_options                    
  end
  
  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  def new_gist
    Gist.create(
      question: @test_passage.current_question,
      user: @test_passage.user,
      url: @result.html_url
    )
  end

end
