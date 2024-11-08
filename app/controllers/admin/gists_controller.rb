class Admin::GistsController < AuthenticatedController

  
  def index
    @gists = Gist.all
  end

  def show
    
  end

  def destroy

  end

end