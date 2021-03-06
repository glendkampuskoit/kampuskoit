class ProdiBidangsController < ApplicationController
	layout "admin"

	def index
		@prodi_bidangs = ProdiBidang.all
	end

	def new
		@prodi_bidang = ProdiBidang.new
	end

	def create
		@prodi_bidang = ProdiBidang.new(params[:prodi_bidang])
		if @prodi_bidang.save
      redirect_to prodi_bidangs_path, notice: 'Bidang Prodi was successfully added.' 
    else
    	render action: "new"
    end	
	end

	def edit
		@prodi_bidang = ProdiBidang.find(params[:id])
	end

	def update
		@prodi_bidang = ProdiBidang.find(params[:id])
    if @prodi_bidang.update_attributes(params[:prodi_bidang])
      redirect_to prodi_bidangs_path, notice: 'Prodi Bidang was successfully updated.' 
    else
      render action: "edit"
    end
	end

	def destroy
		@prodi_bidang = ProdiBidang.find(params[:id])
    @prodi_bidang.destroy
    redirect_to prodi_bidangs_path
	end

	def stream
    prodi_bidangs = ProdiBidang.where('nama_bidang LIKE ?', "%#{params[:query]}%") 

    @prodi_bidang_data = Array.new

    @prodi_bidang_data = prodi_bidangs.map do |prodi_bidang|
      { value: prodi_bidang.nama_bidang, data: prodi_bidang.id }
    end

    stream = { query: "Unit", suggestions: @prodi_bidang_data }

    respond_to do |format|
      format.json { render json: stream.to_json }
    end
  end
end
