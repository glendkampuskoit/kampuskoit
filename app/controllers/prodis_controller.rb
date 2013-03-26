class ProdisController < ApplicationController
  # GET /prodis
  # GET /prodis.json
  def index
    @prodis = Prodi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prodis }
    end
  end

  # GET /prodis/1
  # GET /prodis/1.json
  def show
    @prodi = Prodi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prodi }
    end
  end

  # GET /prodis/new
  # GET /prodis/new.json
  def new
    @prodi = Prodi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prodi }
    end
  end

  # GET /prodis/1/edit
  def edit
    @prodi = Prodi.find(params[:id])
  end

  # POST /prodis
  # POST /prodis.json
  def create
    @prodi = Prodi.new(params[:prodi])

    respond_to do |format|
      if @prodi.save
        format.html { redirect_to @prodi, notice: 'Prodi was successfully created.' }
        format.json { render json: @prodi, status: :created, location: @prodi }
      else
        format.html { render action: "new" }
        format.json { render json: @prodi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prodis/1
  # PUT /prodis/1.json
  def update
    @prodi = Prodi.find(params[:id])

    respond_to do |format|
      if @prodi.update_attributes(params[:prodi])
        format.html { redirect_to @prodi, notice: 'Prodi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prodi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodis/1
  # DELETE /prodis/1.json
  def destroy
    @prodi = Prodi.find(params[:id])
    @prodi.destroy

    respond_to do |format|
      format.html { redirect_to prodis_url }
      format.json { head :no_content }
    end
  end
end
