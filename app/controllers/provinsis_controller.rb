class ProvinsisController < ApplicationController
	def index
		@provinsis = Provinsi.all
	end

	def new
		@provinsi = Provinsi.new
	end

	def create
		@provinsi = Provinsi.new(params[:provinsi])
		if @provinsi.save
      redirect_to provinsis_path, notice: 'Provinsi was successfully created.' 
    else
    	render action: "new"
    end	
	end

	def edit
		@provinsi = Provinsi.find(params[:id])
	end

	def update
		@provinsi = Provinsi.find(params[:id])
    if @provinsi.update_attributes(params[:provinsi])
      redirect_to provinsis_path, notice: 'Provinsi was successfully updated.' 
    else
      render action: "edit"
    end
	end

	def destroy
    @provinsi = Provinsi.find(params[:id])
    @provinsi.destroy
    redirect_to provinsis_path
  end
end
