class ProdisController < ApplicationController
  # GET /prodis
  # GET /prodis.json
  def index
    #if params[:keyword] == ''
        @prodis = Prodi.all
      #else
        #@prodis = Prodi.search(params[:keyword])  
      #end
  end

  # GET /prodis/1
  # GET /prodis/1.json
  def show
    @prodi = Prodi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prodi }
    end
  end
end
