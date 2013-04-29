class ProdisController < ApplicationController

  def index
    @provinsis = Provinsi.all
    @jenjang_prodis = JenjangProdi.all

    if params[:page]
      @prodis = Prodi.filter_by_params(params).paginate(:page => params[:page]) 
    else
      @prodis = Prodi.filter_by_params(params).paginate(:page => '1') 
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
