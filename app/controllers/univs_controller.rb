class UnivsController < ApplicationController

  def index
    @provinsis = Provinsi.all
    @jenis_pts = JenisPt.all
    
    if params[:keyword_univ].nil? || params[:keyword_univ] == ''
      @univs = Univ.all
    else
      @univs = Univ.search(params[:keyword_univ])  
    end
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
