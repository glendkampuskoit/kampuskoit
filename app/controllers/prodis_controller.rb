class ProdisController < ApplicationController

  def index
    @provinsis = Provinsi.all
    @jenjang_prodis = JenjangProdi.all

    withs = {}
    withs[:jenjang_prodi_id] = params[:jenjang_prodi_id] if params[:jenjang_prodi_id].present?
    withs[:provinsi_id] = params[:provinsi_id] if params[:provinsi_id].present?

    @prodis = Prodi.search params[:keyword_prodi], :with => withs

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
