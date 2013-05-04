class ProdisController < ApplicationController

  def index
    @provinsis = Provinsi.all
    @jenjang_prodis = JenjangProdi.all

    withs = {}
    withs[:jenjang_prodi_id] = params[:jenjang_prodi_id] if params[:jenjang_prodi_id].present?
    withs[:provinsi_id] = params[:provinsi_id] if params[:provinsi_id].present?

    # filter akreditasi
    sn = [Zlib::crc32("A"), Zlib::crc32("B"), Zlib::crc32("C")]

    if params[:no_akreditasi] || params[:akreditasi_a] || params[:akreditasi_b] || params[:akreditasi_c]
      sn = []
    end

    sn << Zlib::crc32("A") if params[:akreditasi_a]
    sn << Zlib::crc32("B") if params[:akreditasi_b]
    sn << Zlib::crc32("C") if params[:akreditasi_c]

    withs[:akreditasi] = sn
    #withs[:status_akreditasi] = 1


    # urutan
    orders = ""
    orders = "nama_prodi ASC" if params[:urutan] == "1"
    orders = "nama_prodi DESC" if params[:urutan] == "2"

    @prodis = Prodi.search params[:keyword_prodi], :with => withs, :order => orders, :page => params[:page], :per_page => 10
    @params_value = params

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
