class UnivbiayasController < ApplicationController
	layout "admin"

	def index
		@univ = Univ.find(params[:univ_id])
		@univbiayas = Univbiaya.where(univ_id: @univ)
	end

	def new
		@univ = Univ.find(params[:univ_id])
		@url = 	univ_univbiayas_path(@univ)
		@univbiaya = Univbiaya.new
	end

	def create
		@univbiaya = Univbiaya.new(params[:univbiaya])
		if @univbiaya.save
      		redirect_to univ_univbiayas_path(@univbiaya.univ), notice: 'Biaya Perguruan Tinggi Berhasil ditambah.' 
    	else
    		render action: "new"
    	end	
	end

	def edit
		@univbiaya = Univbiaya.find(params[:id])
		@url = univ_univbiaya_path(@univbiaya.univ, @univbiaya)
		@univ = Univ.find(params[:univ_id])
	end

	def update
		@univbiaya = Univbiaya.find(params[:id])
    	if @univbiaya.update_attributes(params[:univbiaya])
      		redirect_to univ_univbiayas_path(@univbiaya.univ), notice: 'Biaya Perguruan tinggi berhasil diubah.' 
    	else
      		render action: "edit"
      	end
    end
end
