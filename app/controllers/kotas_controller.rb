class KotasController < ApplicationController
	def index
		@kotas = Kota.all
	end

	def new
		@kota = Kota.new
	end

	def create
		@kota = Kota.new(params[:kota])

	    respond_to do |format|
	      if @kota.save
	        format.html { redirect_to 'index', notice: 'Kota was successfully created.' }
	      else
	        format.html { render action: "new" }
	      end
	    end
	end
end
