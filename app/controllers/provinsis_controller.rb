class ProvinsisController < ApplicationController
	def index
		@provinsis = Provinsi.all
	end

	def new
		@provinsi = Provinsi.new
	end

	def create
		@provinsi = Provinsi.new(params[:provinsi])

	    respond_to do |format|
	      if @provinsi.save
	        format.html { redirect_to 'index', notice: 'Provinsi was successfully created.' }
	      else
	        format.html { render action: "new" }
	      end
	    end
	end
end
