class Admin::GistsController < AuthenticatedController

  
  def index
    @gists = Gist.all
  end

  def destroy
    @gist = Gist.find(params[:id])
    @gist.destroy
    redirect_to admin_gists_path
  end

end