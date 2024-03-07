class TestsController < ApplicationController
  
  before_action :test_find, only: %i[show edit update delete]
  
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test
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
      redirect_to @test
    else
      render :edit
    end
  end

  # def delete

  # end

  # def destroy
  #   if @test.destroy
  #     index
  #   else
  #     render :delete
  #   end
  # end
private

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def test_find
    @test = Test.find(params[:id])
  end
end