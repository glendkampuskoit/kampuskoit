class ProdisController < ApplicationController
  load_and_authorize_resource :only => [:new, :create, :edit, :update, :destroy, :list]

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

    @prodis = Prodi.search params[:keyword_prodi], :with => withs, :order => orders, :page => params[:page], :per_page => 10
    @params_value = params

  end

  def new
    @prodi = Prodi.new
    render :layout => "admin"
  end

  def create
    @prodi = Prodi.new(params[:prodi])

    if @prodi.save
      redirect_to @prodi, notice: 'Prodi was successfully created.'
    else
      render action: "new", :layout => "admin"
    end
  end

  def show
    @prodi = Prodi.find(params[:id])
  end

  def list
    @prodis = Prodi.paginate(:page => params[:page], :per_page => 30)    
    render :layout => "admin"
  end
end
