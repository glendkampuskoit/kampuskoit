class ProdisController < ApplicationController

  def index
    if params[:keyword].nil? || params[:keyword] == ''
      @prodis = Prodi.all
    else
      @prodis = Prodi.search(params[:keyword])
    end
  end

  def new
    @prodi = Prodi.new
  end

  def create
    @prodi = Prodi.new(params[:prodi])

    respond_to do |format|
      if @prodi.save
        format.html { redirect_to @prodi, notice: 'Prodi was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @prodi = Prodi.find(params[:id])
  end
end
