class UnivsController < ApplicationController
  load_and_authorize_resource :only => [:new, :create, :edit, :update, :destroy, :list] if Rails.env.development? || Rails.env.production?

  def index
    @provinsis = Provinsi.order("provinsi ASC")
    @jenis_pts = JenisPt.order("jenis ASC")

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

    @univs = Univ.search params[:keyword], :with => withs, :order => orders, :page => params[:page], :per_page => 10
    @params_value = params
  end

  def new
    @univ = Univ.new
    render layout: "admin"
  end

  def create
    @univ = Univ.new(params[:univ])
    if @univ.save
      #redirect_to univs_list_path, notice: 'Perguruan Tinggi berhasil ditambah.'
      redirect_to edit_univ_path(@univ), notice: 'Perguruan Tinggi berhasil ditambah.' 
    else
      render action: "new", layout: "admin"
    end
  end

  def edit
    @univ = Univ.find(params[:id])
    @univgallery = Univgallery.new
    @univgalleries = Univgallery.where(univ_id: @univ)
    render layout: "admin"
  end

  def update
    @univ = Univ.find(params[:id])
    if @univ.update_attributes(params[:univ])
      #redirect_to univs_list_path, notice: 'Perguruan Tinggi was successfully updated.' 
      redirect_to edit_univ_path(@univ), notice: 'Perguruan Tinggi berhasil diupdate.' 
    else
      @univgallery = Univgallery.new
      @univgalleries = Univgallery.where(univ_id: @univ)
      render action: "edit", layout: "admin"
    end    
  end

  def show
    @univ = Univ.find(params[:id])
    @univranking = Univranking.where("univ_id = :univ AND status = :status", {univ: @univ, status: 1}).first
    @fakultases = ActiveRecord::Base.connection.execute("select distinct fakultas from prodis where univ_id = '#{@univ.id}'").to_a

    @provinsis = Provinsi.order("provinsi ASC")
    @jenis_pts = JenisPt.order("jenis ASC")
    @params_value = { :keyword => "", :provinsi_id => @univ.kota.provinsi.id, :jenis_pt_id => @univ.jenis_pt.id }

    #trick for friendly_id
    redirect_to @univ, status: :moved_permanently unless request.path == univ_path(@univ)
  end

  def list
    #@univs = Univ.paginate(:page => params[:page], :per_page => 10)
    if params[:keyword].present?
      @univs = Univ.where("nama_pt LIKE ?", "%#{params[:keyword]}%").paginate(:page => params[:page], :per_page => 10)
    else
      @univs = Univ.paginate(:page => params[:page], :per_page => 10)
    end
    render layout: "admin"
  end
end
