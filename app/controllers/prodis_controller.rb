class ProdisController < ApplicationController
  load_and_authorize_resource :only => [:new, :create, :edit, :update, :destroy, :list] if Rails.env.development? || Rails.env.production?

  def index
    @provinsis = Provinsi.all
    @jenjang_prodis = JenjangProdi.all

    withs = {}
    withs[:jenjang_prodi_id] = params[:jenjang_prodi_id] if params[:jenjang_prodi_id].present?
    withs[:provinsi_id] = params[:provinsi_id] if params[:provinsi_id].present?


    # filter akreditasi, credit to Pat
    # akreditasi_list = ["A", "B", "C"]

    if params[:no_akreditasi] || params[:akreditasi_a] || params[:akreditasi_b] || params[:akreditasi_c]
      akreditasi_list = []
    
      akreditasi_list << "0" if params[:no_akreditasi]
      akreditasi_list << "A" if params[:akreditasi_a]
      akreditasi_list << "B" if params[:akreditasi_b]
      akreditasi_list << "C" if params[:akreditasi_c]

      akreditasis = ProdiAkreditasi.where(:status => "1").find_all_by_peringkat(akreditasi_list)
      akreditasi_arr = []
      akreditasis.each do |akreditasi|
        akreditasi_arr << akreditasi.id  
      end

      withs[:akreditasis] = akreditasi_arr
    end

    # urutan
    orders = ""
    orders = "nama_prodi ASC" if params[:urutan] == "1"
    orders = "nama_prodi DESC" if params[:urutan] == "2"

    @prodis = Prodi.search params[:keyword], :with => withs, :order => orders, :page => params[:page], :per_page => 10
    @params_value = params

  end

  def new
    @prodi = Prodi.new
    render layout: "admin"
  end

  def create
    @prodi = Prodi.new(params[:prodi])

    if @prodi.save
      redirect_to edit_univ_prodi_path(@prodi.univ, @prodi), notice: 'Program Studi berhasil ditambah.' 
    else
      render action: "new", layout: "admin"
    end
  end

  def edit
    @prodi = Prodi.find(params[:id])
    render layout: "admin"
  end

  def update
    @prodi = Prodi.find(params[:id])
    if @prodi.update_attributes(params[:prodi])
      redirect_to edit_univ_prodi_path(@prodi.univ, @prodi), notice: 'Program Studi berhasil diupdate.' 
    else
      render action: "edit", layout: "admin"
    end   
  end

  def show
    @prodi = Prodi.find(params[:id])
    @provinsis = Provinsi.order("provinsi ASC")
    @jenjang_prodis = JenjangProdi.order("jenjang ASC")
    @params_value = { keyword: "", provinsi_id: @prodi.kota.provinsi.id, jenjang_prodi_id: @prodi.jenjang_prodi.id }
  end

  def list
    if params[:keyword].present?
      @prodis = Prodi.search params[:keyword], :page => params[:page], :per_page => 10
    else
      @prodis = Prodi.paginate(page: params[:page], per_page: 10)
    end
    render layout: "admin"
  end

  def destroy
    
  end

  def stream

    withs = {}
    withs[:univ_id] = params[:univ_id] if params[:univ_id].present?

    prodis = Prodi.search params[:query], with: withs, :order => 'nama_prodi ASC', :per_page => 10

    @prodi_data = Array.new

    @prodi_data = prodis.map do |prodi|
      { value: prodi.nama_prodi.titleize, data: prodi.id }
    end

    stream = { query: "Unit", suggestions: @prodi_data }

    respond_to do |format|
      format.json { render json: stream.to_json }
    end
  end
end
