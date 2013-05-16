class UnivsController < ApplicationController

  def index
    @provinsis = Provinsi.all
    @jenis_pts = JenisPt.all

    withs = {}

    withs[:jenis_pt_id] = params[:jenis_pt_id] if params[:jenis_pt_id].present?
    withs[:provinsi_id] = params[:provinsi_id] if params[:provinsi_id].present?

    # use Zlib to convert string to crc32 integer
    sn = [Zlib::crc32('negeri'), Zlib::crc32('swasta')]

    if params[:ptn_check] || params[:pts_check]
      sn = []
    end

    sn << Zlib::crc32('negeri') if params[:ptn_check]
    sn << Zlib::crc32('swasta') if params[:pts_check]

    withs[:status_negeri] = sn

    # urutan
    orders = ""
    orders = "nama_pt ASC" if params[:urutan] == "1"
    orders = "nama_pt DESC" if params[:urutan] == "2"

    @univs = Univ.search params[:keyword_pt], :with => withs, :order => orders, :page => params[:page], :per_page => 10
    @params_value = params
  end

  def new
    @univ = Univ.new
    render :layout => "admin"
  end

  def create
    @univ = Univ.new(params[:univ])
    if @univ.save
      redirect_to @univ, notice: 'Univ was successfully created.'
    else
      render action: "new", :layout => "admin"
    end
  end

  def edit
    @univ = Univ.find(params[:id])
  end

  def update
    @univ = Univ.find(params[:id])
    if @univ.update_attributes(params[:univ])
      redirect_to univs_path, notice: 'Perguruan Tinggi was successfully updated.' 
    else
      render action: "edit", :layout => "admin"
    end    
  end

  def show
    @univ = Univ.find(params[:id])

    @fakultases = ActiveRecord::Base.connection.execute("select distinct fakultas from prodis where univ_id = '#{@univ.id}'").to_a

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @univ }
    end
  end
end
