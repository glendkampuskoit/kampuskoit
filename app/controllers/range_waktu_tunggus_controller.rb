class RangeWaktuTunggusController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_waktu_tunggus = RangeWaktuTunggu.all
	end

	def new
		@range_waktu_tunggu = RangeWaktuTunggu.new
	end

	def create
		@range_waktu_tunggu = RangeWaktuTunggu.new(params[:range_waktu_tunggu])
		if @range_waktu_tunggu.save
      		redirect_to range_gajis_path, notice: 'Range Waktu Tunggu berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

end
