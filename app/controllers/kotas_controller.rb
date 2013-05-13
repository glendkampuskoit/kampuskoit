class KotasController < ApplicationController
	def index
		@kotas = Kota.all
	end

	def new
		@kota = Kota.new
	end

	def create
		@kota = Kota.new(params[:kota])
		if @kota.save
      redirect_to kotas_path, notice: 'Kota was successfully created.' 
    else
    	render action: "new"
    end	
	end
end
