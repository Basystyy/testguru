class Admin::TestsController < Admin::BaseController

  before_action :test_find, only: %i[show edit update destroy]
  
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    @test.author_id = current_user.id

    if @test.save
      redirect_to admin_test_path(@test), notice: t('.success')
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @test.update(test_params)
      redirect_to admin_test_path(@test)
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to admin_tests_path
  end

private

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def test_find
    @test = Test.find(params[:id])
  end

end