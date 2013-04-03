class UnivsController < ApplicationController

  def index
    #if params[:keyword].nil?
     # @univs = Univ.all  
    #else
      @univs = Univ.search(params[:keyword])
   # end
  end

  def show
    @univ = Univ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @univ }
    end
  end
end
