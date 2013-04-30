class UnivsController < ApplicationController

  def index
    @provinsis = Provinsi.all
    @jenis_pts = JenisPt.all

    withs = {}
    withs[:jenis_pt_id] = params[:jenis_pt_id] if params[:jenis_pt_id].present?
    withs[:provinsi_id] = params[:provinsi_id] if params[:provinsi_id].present?
    
    @univs = Univ.search params[:keyword_pt], :with => withs, :page => params[:page], :per_page => 10
  end

  def new
    @univ = Univ.new
  end

  def create
    @univ = Univ.new(params[:univ])

    respond_to do |format|
      if @univ.save
        format.html { redirect_to @univ, notice: 'Univ was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @univ = Univ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @univ }
    end
  end
end
