class UnivsController < ApplicationController
  # GET /univs
  # GET /univs.json
  def index
    @univs = Univ.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @univs }
    end
  end

  # GET /univs/1
  # GET /univs/1.json
  def show
    @univ = Univ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @univ }
    end
  end

  # GET /univs/new
  # GET /univs/new.json
  def new
    @univ = Univ.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @univ }
    end
  end

  # GET /univs/1/edit
  def edit
    @univ = Univ.find(params[:id])
  end

  # POST /univs
  # POST /univs.json
  def create
    @univ = Univ.new(params[:univ])

    respond_to do |format|
      if @univ.save
        format.html { redirect_to @univ, notice: 'Univ was successfully created.' }
        format.json { render json: @univ, status: :created, location: @univ }
      else
        format.html { render action: "new" }
        format.json { render json: @univ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /univs/1
  # PUT /univs/1.json
  def update
    @univ = Univ.find(params[:id])

    respond_to do |format|
      if @univ.update_attributes(params[:univ])
        format.html { redirect_to @univ, notice: 'Univ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @univ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /univs/1
  # DELETE /univs/1.json
  def destroy
    @univ = Univ.find(params[:id])
    @univ.destroy

    respond_to do |format|
      format.html { redirect_to univs_url }
      format.json { head :no_content }
    end
  end
end
